# Repository Organization Proposal

## Objetivo

Evaluar si los documentos creados durante el cierre de Fase 2 y el inicio de Fase 3 deberían reorganizarse para mantener una raíz limpia.

Este documento no implementa cambios.

No afecta documentos de autoridad.

---

## Criterio General

La raíz del repositorio debería conservar solo documentos de entrada, autoridad o estado general.

Los documentos analíticos, reportes de validación, experimentos y conocimiento técnico deberían agruparse por función para evitar ruido operativo.

---

## Phase2-Validation-Report.md

Ubicación actual:

`Phase2-Validation-Report.md`

Ubicación propuesta:

`system/validation/Phase2-Validation-Report.md`

Justificación:

Es un reporte de validación de fase. Pertenece al historial de validación del sistema, junto a otros documentos de `system/validation/`.

Riesgo de moverlo:

Bajo.

Podrían romperse referencias manuales si alguien lo cita desde raíz, pero actualmente no es documento de autoridad.

Impacto sobre la arquitectura:

Ninguno.

El documento registra validación; no gobierna arquitectura ni estado operativo.

---

## Cursor-Native-Mapping.md

Ubicación actual:

`Cursor-Native-Mapping.md`

Ubicación propuesta:

`system/cursor/Cursor-Native-Mapping.md`

Justificación:

Es un análisis técnico sobre compatibilidad entre Corbenn Labs y capacidades nativas de Cursor. No es autoridad del Core ni estado operativo.

Riesgo de moverlo:

Bajo.

Solo requiere actualizar referencias futuras si el documento es citado.

Impacto sobre la arquitectura:

Ninguno.

Es material de análisis para decisiones futuras.

---

## Cursor-Capabilities-KnowledgeBase.md

Ubicación actual:

`Cursor-Capabilities-KnowledgeBase.md`

Ubicación propuesta:

`system/cursor/Cursor-Capabilities-KnowledgeBase.md`

Justificación:

Es una base de conocimiento técnica sobre Cursor. Debe vivir junto a otros documentos relacionados con capacidades nativas de Cursor.

Riesgo de moverlo:

Bajo.

No es documento de autoridad ni contrato operativo.

Impacto sobre la arquitectura:

Ninguno.

No modifica arquitectura; informa decisiones futuras.

---

## Experiment-001.md

Ubicación actual:

`Experiment-001.md`

Ubicación propuesta:

`system/experiments/Experiment-001.md`

Justificación:

Es un diseño de experimento de Fase 3. Debe agruparse con otros experimentos para evitar llenar la raíz con documentos temporales o iterativos.

Riesgo de moverlo:

Bajo.

Puede volverse menos visible desde raíz, pero quedaría mejor organizado por función.

Impacto sobre la arquitectura:

Ninguno.

Es diseño experimental, no estándar oficial.

---

## Experiment-001-Refined.md

Ubicación actual:

`Experiment-001-Refined.md`

Ubicación propuesta:

`system/experiments/Experiment-001-Refined.md`

Justificación:

Es una iteración refinada del experimento 001. Debe mantenerse junto al experimento original para preservar trazabilidad.

Riesgo de moverlo:

Bajo.

El único riesgo es duplicación conceptual con `Experiment-001.md`; mover ambos juntos reduce ese riesgo.

Impacto sobre la arquitectura:

Ninguno.

No gobierna arquitectura.

---

## First Cursor Experiment Recommendation.md

Ubicación actual:

`First Cursor Experiment Recommendation.md`

Ubicación propuesta:

`system/experiments/First Cursor Experiment Recommendation.md`

Justificación:

Es una recomendación analítica relacionada con experimentos de Cursor. Pertenece al mismo grupo que `Experiment-001.md` y `Experiment-001-Refined.md`.

Riesgo de moverlo:

Bajo.

Puede requerir actualización de referencias futuras, pero no afecta operación actual.

Impacto sobre la arquitectura:

Ninguno.

No implementa ni cambia capacidades.

---

## AgentInvocationProtocol.md

Ubicación actual:

`system/protocols/AgentInvocationProtocol.md`

Ubicación propuesta:

Sin cambio.

Justificación:

Ya está ubicado correctamente como protocolo oficial del sistema.

Riesgo de moverlo:

No aplica.

Impacto sobre la arquitectura:

No aplica.

Debe permanecer donde está.

---

## Documentos Que No Deben Moverse

No se recomienda mover:

- `SYSTEM_BOOT.md`
- `PROJECT_STATE.md`
- `projects/oskar-corbenn/docs/MasterContext_v2.md`
- `projects/oskar-corbenn/docs/MasterContext.md`
- `README.md`
- `VERSION.md`

Justificación:

Son documentos de autoridad, estado, entrada o contexto central.

Moverlos afectaría la arquitectura o la experiencia operativa.

---

## Propuesta De Organización

Estructura sugerida:

```
system/
  cursor/
    Cursor-Native-Mapping.md
    Cursor-Capabilities-KnowledgeBase.md

  experiments/
    Experiment-001.md
    Experiment-001-Refined.md
    First Cursor Experiment Recommendation.md

  protocols/
    AgentInvocationProtocol.md

  validation/
    Phase2-Validation-Report.md
```

---

## Evaluación General

La raíz del repositorio contiene varios documentos analíticos recientes que no son autoridad ni estado operativo.

Moverlos a carpetas funcionales ayudaría a mantener la raíz limpia sin alterar arquitectura.

La propuesta no afecta documentos de autoridad.

No debe ejecutarse ningún movimiento hasta aprobación explícita.
