# Experiment 001

## Objetivo

Validar si es posible reducir la invocación del CEO al mínimo utilizando capacidades nativas de Cursor sin alterar la arquitectura de Corbenn Labs.

---

## 1. Hipótesis

Si se utiliza una capacidad nativa de Cursor para cargar instrucciones base del sistema, entonces el operador podrá invocar al CEO con una instrucción mínima sin adjuntar manualmente todos los documentos requeridos.

La arquitectura de Corbenn Labs debería permanecer intacta, usando los documentos actuales como fuentes de verdad.

---

## 2. Qué Queremos Validar

Queremos validar:

- Si el CEO puede activarse correctamente con una instrucción mínima.
- Si Cursor puede recordar qué documentos base debe consultar.
- Si se preserva la autoridad de `SYSTEM_BOOT.md`, `MasterContext_v2.md` y `PROJECT_STATE.md`.
- Si el CEO responde con lenguaje de objetivos, plan, decisión y siguiente acción.
- Si se evita que Composer responda con conocimiento propio no respaldado.
- Si el operador reduce pasos manuales al iniciar una sesión.

---

## 3. Qué Capacidad De Cursor Utilizaremos

Capacidad a evaluar:

Project Rules (`.cursor/rules`)

Razón:

Las Project Rules permiten instrucciones persistentes del proyecto sin modificar la arquitectura interna de Corbenn Labs.

El experimento busca comprobar si una regla mínima puede recordar a Cursor que debe leer y obedecer los documentos oficiales antes de operar como CEO.

---

## 4. Qué Documentos NO Deben Cambiar

No deben cambiar:

- `SYSTEM_BOOT.md`
- `projects/oskar-corbenn/docs/MasterContext_v2.md`
- `PROJECT_STATE.md`
- `projects/oskar-corbenn/docs/MasterContext.md`
- `agents/CEO/AGENT.md`
- `agents/CEO/Workflow.md`
- `agents/CEO/Inputs.md`
- `agents/CEO/Outputs.md`
- `agents/CEO/DecisionFramework.md`
- `system/protocols/AgentInvocationProtocol.md`
- Cualquier especialista existente
- Cualquier documento de arquitectura vigente

---

## 5. Criterio De Éxito

El experimento será exitoso si el operador puede iniciar un chat nuevo con una instrucción mínima como:

```
Eres el CEO de Corbenn Labs.

Objetivo:
[objetivo de negocio]
```

Y el sistema:

- Lee o solicita correctamente el contexto base.
- Respeta la autoridad documental.
- Usa `PROJECT_STATE.md` como estado operativo.
- Responde en español.
- No usa formato de Executive Brief para un objetivo nuevo.
- Responde con comprensión del objetivo, plan de ejecución y decisión requerida.
- No inventa información faltante.
- No modifica arquitectura ni documentos.

---

## 6. Criterio De Fracaso

El experimento fracasa si:

- Cursor no carga las instrucciones mínimas de forma confiable.
- El CEO responde sin consultar el estado operativo.
- Se ignora `MasterContext_v2.md`.
- Se inventa información no documentada.
- Se confunde `MasterContext.md` con autoridad arquitectónica.
- Se responde con un Executive Brief en lugar de un plan de ejecución.
- El operador sigue teniendo que adjuntar manualmente todos los archivos base.
- El comportamiento depende demasiado de memoria conversacional previa.

---

## 7. Riesgos Del Experimento

- Las Project Rules pueden no forzar lectura real de documentos, solo orientar comportamiento.
- Cursor puede responder desde conocimiento general si la regla es insuficiente.
- Una regla demasiado larga puede duplicar documentación y generar divergencia.
- Una regla demasiado corta puede no reducir pasos manuales.
- El experimento puede dar resultados distintos según el contexto activo del chat.
- Puede confundirse una mejora de UX con una modificación arquitectónica si no se mantiene el alcance limitado.

---

## Estado

Diseñado.

No implementado.
