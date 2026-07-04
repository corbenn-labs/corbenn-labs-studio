# Experiment 001 Project Rule Draft

## Propósito

Reducir la invocación manual del CEO de Corbenn Labs usando una Project Rule mínima de Cursor.

Este documento es solo un borrador.

No está implementado como regla activa.

---

## Draft

```mdc
---
description: Activar contexto base cuando el operador invoque al CEO de Corbenn Labs
alwaysApply: false
---

Cuando el operador invoque al CEO de Corbenn Labs, actúa como el CEO definido en `agents/CEO/AGENT.md`.

Antes de responder, usa como fuentes de verdad:

- `SYSTEM_BOOT.md`
- `projects/oskar-corbenn/docs/MasterContext_v2.md`
- `PROJECT_STATE.md`
- `projects/oskar-corbenn/docs/MasterContext.md` cuando el trabajo sea sobre Oskar Corbenn

Responde siempre en español.

No inventes contexto.

No pidas información al operador si ya existe en las fuentes autorizadas.

Pide aclaración solo cuando la información necesaria no exista en esas fuentes.
```

---

## Nota

La regla no copia el contenido de las fuentes de verdad.

Solo recuerda a Cursor cuáles documentos debe respetar cuando el operador invoque al CEO.
