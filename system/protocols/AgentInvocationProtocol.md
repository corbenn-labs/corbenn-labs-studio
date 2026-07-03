# Agent Invocation Protocol

## Propósito

El Agent Invocation Protocol (AIP) define cómo invocar correctamente a cualquier especialista de Corbenn Labs dentro de Cursor.

El AIP existe para asegurar que Composer ejecute especialistas como contratos documentales explícitos, no como respuestas generales del modelo.

El AIP no es un agente.

No toma decisiones.

No produce entregables de especialistas.

No reemplaza al CEO.

---

## Principios

- El CEO conserva la orquestación.
- El AIP solo ejecuta invocaciones explícitas.
- Cada especialista debe operar bajo su contrato documental.
- La documentación adjunta del especialista prevalece sobre conocimiento general del modelo.
- Si falta información obligatoria, la ejecución se detiene.
- El AIP nunca inventa información.
- El AIP nunca modifica documentos fuente.
- El AIP nunca aprueba ni rechaza gates.
- `PROJECT_STATE.md` sigue siendo la única fuente de estado operativo.
- `MasterContext_v2.md` sigue siendo la autoridad arquitectónica.

---

## Flujo

CEO

↓

Solicitud

↓

AIP verifica:

- Especialista solicitado
- Objetivo
- Gate o fase del workflow
- Inputs obligatorios
- Output esperado
- Restricciones de ejecución

↓

AIP carga el contrato documental del especialista:

- `AGENT.md`
- `Workflow.md`
- `Inputs.md`
- `Outputs.md`
- `DecisionFramework.md`
- `PROJECT_STATE.md`
- `projects/oskar-corbenn/docs/MasterContext_v2.md`
- Material fuente específico

↓

Especialista ejecuta únicamente bajo su contrato.

↓

Especialista devuelve el output definido.

↓

AIP valida:

- El output corresponde al contrato.
- Los inputs faltantes fueron reportados.
- Los límites del especialista fueron respetados.

↓

CEO recibe el resultado.

---

## Contrato De Entrada

El CEO debe proporcionar siempre:

- Nombre del especialista.
- Objetivo de la tarea.
- Gate o fase del workflow.
- Material fuente.
- Entregable requerido.
- Decisión esperada, si aplica.
- Contexto del proyecto activo.
- Restricciones específicas.
- Confirmación de si la tarea permite modificar archivos o es solo análisis.

Si falta un input obligatorio definido en `Inputs.md`, el AIP debe detener la ejecución y pedirlo.

---

## Contrato De Salida

Todo especialista invocado mediante AIP debe devolver:

- El entregable definido en `Outputs.md`.
- Fuentes utilizadas.
- Inputs faltantes, si existieron.
- Riesgos o incertidumbre detectados.
- Decisión requerida para el CEO, si aplica.
- Siguiente paso recomendado solo si está permitido por su contrato.
- Confirmación de que respetó sus límites.

---

## Reglas Permanentes

- El AIP es protocolo, no agente.
- El AIP no decide qué hacer.
- El AIP no elige especialistas por intuición.
- El AIP no crea especialistas.
- El AIP no mantiene estado propio.
- El AIP no reemplaza `PROJECT_STATE.md`.
- El AIP no modifica arquitectura.
- El AIP no modifica documentos fuente.
- El AIP no resuelve conflictos de negocio.
- El AIP no convierte outputs de especialistas en estrategia.
- Si existe conflicto de responsabilidad, escala al CEO.

---

## Límites

El AIP nunca debe:

- Investigar.
- Crear estrategia.
- Producir contenido.
- Aprobar gates.
- Rechazar gates.
- Priorizar proyectos.
- Publicar contenido.
- Cambiar responsabilidades de agentes.
- Reinterpretar conclusiones de especialistas.
- Corregir outputs de especialistas.
- Crear memoria operativa paralela.
- Sustituir al CEO como orquestador.

El AIP solo valida que la invocación tenga contexto suficiente y que el especialista opere bajo su contrato.

---

## Ejemplos Mínimos De Invocación

### Executive Briefing Agent

```
Invocar especialista: Executive Briefing Agent

Objetivo:
Crear un Executive Briefing del entregable adjunto.

Contexto obligatorio:
@agents/Executive Briefing Agent/AGENT.md
@agents/Executive Briefing Agent/Workflow.md
@agents/Executive Briefing Agent/Inputs.md
@agents/Executive Briefing Agent/Outputs.md
@agents/Executive Briefing Agent/DecisionFramework.md
@SYSTEM_BOOT.md
@PROJECT_STATE.md
@projects/oskar-corbenn/docs/MasterContext_v2.md
@[entregable fuente]

Restricción:
Actúa únicamente bajo el contrato del especialista adjunto.
No introduzcas información nueva.
Si falta un input obligatorio, detente y repórtalo.
```

### Researcher

```
Invocar especialista: Researcher

Objetivo:
Responder una pregunta de investigación aprobada por el CEO.

Contexto obligatorio:
@agents/researcher/AGENT.md
@agents/researcher/Workflow.md
@agents/researcher/Inputs.md
@agents/researcher/Outputs.md
@agents/researcher/DecisionFramework.md
@SYSTEM_BOOT.md
@PROJECT_STATE.md
@projects/oskar-corbenn/docs/MasterContext_v2.md
@[documentos fuente relevantes]

Restricción:
Produce únicamente el output definido por el Researcher.
No generes estrategia.
No inventes evidencia.
```

### Marketing Strategist

```
Invocar especialista: Marketing Strategist

Objetivo:
Convertir evidencia aprobada en estrategia.

Contexto obligatorio:
@agents/Marketing Strategist/AGENT.md
@agents/Marketing Strategist/Workflow.md
@agents/Marketing Strategist/Inputs.md
@agents/Marketing Strategist/Outputs.md
@agents/Marketing Strategist/DecisionFramework.md
@SYSTEM_BOOT.md
@PROJECT_STATE.md
@projects/oskar-corbenn/docs/MasterContext_v2.md
@[research report aprobado]

Restricción:
Produce únicamente el output definido por el Marketing Strategist.
No hagas investigación.
No produzcas contenido.
```

---

## Estado

Versión:

AIP v1.0

Estado:

Oficial

Fecha:

2026-07-03

Autor:

Corbenn Labs
