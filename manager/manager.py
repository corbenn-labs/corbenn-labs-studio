import json
import os
import sys
import urllib.error
import urllib.request

from pathlib import Path

from dotenv import load_dotenv
from fastapi import FastAPI, Request
from fastapi.responses import JSONResponse

_ENV_PATH = Path(__file__).resolve().parent.parent / ".env"
load_dotenv(_ENV_PATH)

app = FastAPI()

MODEL = os.getenv("MANAGER_MODEL", "gpt-5.5")
OPENAI_API_URL = "https://api.openai.com/v1/chat/completions"
REQUIRED_FIELDS = ("specialist", "workflow", "priority", "mission", "input", "context")


def extract_request(payload):
    if not isinstance(payload, dict):
        return None

    for field in ("request", "message", "query", "mission", "task"):
        value = payload.get(field)
        if value:
            return str(value)

    return None


def build_messages(user_request):
    return [
        {
            "role": "system",
            "content": (
                "You are the Corbenn Labs Manager. "
                "Convert the user's natural-language request into one JSON object for n8n. "
                "Return JSON only. No markdown. No explanations. "
                "The JSON must contain exactly these top-level fields: "
                "specialist, workflow, priority, mission, input, context. "
                "input must contain query. context must contain project and source. "
                "Choose the most appropriate specialist and workflow. "
                "Use priority normal unless the request clearly requires another priority. "
                "Use context.source manager unless the request clearly provides another source."
            ),
        },
        {
            "role": "user",
            "content": user_request,
        },
    ]


def call_gpt(user_request):
    api_key = os.getenv("OPENAI_API_KEY")
    print("CALL_GPT KEY FOUND:", api_key is not None)
    if api_key:
        print("CALL_GPT PREFIX:", api_key[:8])
    if not api_key:
        raise RuntimeError("missing OPENAI_API_KEY")

    body = {
        "model": MODEL,
        "messages": build_messages(user_request),
        "response_format": {"type": "json_object"},
    }

    request = urllib.request.Request(
        OPENAI_API_URL,
        data=json.dumps(body).encode("utf-8"),
        headers={
            "Authorization": f"Bearer {api_key}",
            "Content-Type": "application/json",
        },
        method="POST",
    )

    try:
        with urllib.request.urlopen(request, timeout=30) as response:
            raw_body = response.read().decode("utf-8")
            print("OPENAI_HTTP_RESPONSE:", raw_body)
            data = json.loads(raw_body)
    except urllib.error.HTTPError as error:
        detail = error.read().decode("utf-8")
        print("OPENAI_HTTP_RESPONSE:", detail)
        raise RuntimeError(f"gpt request failed: {detail}") from error
    except urllib.error.URLError as error:
        raise RuntimeError(f"gpt request failed: {error.reason}") from error

    content = data["choices"][0]["message"]["content"]
    return json.loads(content)


def validate_decision(decision):
    if not isinstance(decision, dict):
        return False

    if any(field not in decision for field in REQUIRED_FIELDS):
        return False

    if not isinstance(decision["input"], dict) or "query" not in decision["input"]:
        return False

    if not isinstance(decision["context"], dict):
        return False

    return "project" in decision["context"] and "source" in decision["context"]


def normalize_decision(decision):
    return {
        "specialist": decision["specialist"],
        "workflow": decision["workflow"],
        "priority": decision["priority"],
        "mission": decision["mission"],
        "input": {
            "query": decision["input"]["query"],
        },
        "context": {
            "project": decision["context"]["project"],
            "source": decision["context"]["source"],
        },
    }


def run_manager(payload):
    print("PAYLOAD RECIBIDO:")
    print(json.dumps(payload, indent=2))
    user_request = extract_request(payload)
    if not user_request:
        return {"error": "missing request"}, 1

    try:
        decision = call_gpt(user_request)
    except (RuntimeError, KeyError, IndexError, json.JSONDecodeError) as error:
        print("FULL ERROR:", repr(error))
        print("FULL ERROR TYPE:", type(error))
        return {"error": str(error)}, 2

    if not validate_decision(decision):
        return {"error": "invalid gpt response"}, 2

    return normalize_decision(decision), 0


@app.post("/run")
async def run(request: Request):
    try:
        payload = await request.json()
    except json.JSONDecodeError as error:
        return JSONResponse({"error": f"invalid json: {error.msg}"}, status_code=400)

    response, exit_code = run_manager(payload)
    status_code = 200 if exit_code == 0 else 502 if exit_code == 2 else 400
    return JSONResponse(response, status_code=status_code)


def main() -> int:
    try:
        payload = json.load(sys.stdin)
    except json.JSONDecodeError as error:
        print(json.dumps({"error": f"invalid json: {error.msg}"}))
        return 1

    response, exit_code = run_manager(payload)
    if exit_code != 0:
        print(json.dumps(response))
        return exit_code

    print(json.dumps(response))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
