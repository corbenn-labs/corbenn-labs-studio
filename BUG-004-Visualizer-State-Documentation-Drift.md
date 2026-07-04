# BUG-004 — Visualizer State Documentation Drift

## Contexto

Durante la revisión suplementaria G2 del 2026-07-04 se detectó una discrepancia operativa entre el estado real reportado del long-form anchor / visualizer de *El Cambio de Tono* y varios documentos activos del repositorio.

El operador aportó nueva evidencia: el visualizer fue publicado hace aproximadamente 2 días, el canal está controlado por Oskar Corbenn, OAC sigue pendiente/en curso y se observaron aproximadamente 19 vistas.

---

## Evidencia

- `projects/oskar-corbenn/docs/OperationsContext.md` registra:
  - `Visualizer: Publicado`
  - `OAC: Pendiente`
- `PROJECT_STATE.md` todavía registra:
  - `Produce the Official Visualizer`
  - `Publish the first long-form video`
  - `Long-form video not yet published`
- `projects/oskar-corbenn/audits/YouTubeEvidenceGapReview.md` todavía trata el long-form como no publicado.
- `projects/oskar-corbenn/marketing/youtube-growth-strategy.md` fue construido bajo la premisa condicional de que el long-form anchor faltaba.
- `projects/oskar-corbenn/releases/el-cambio-de-tono/content/long-form-anchor-brief.md` produce un paquete G6 para crear el anchor, pero no está reconciliado con el visualizer ya publicado.
- No se encontró un registro completo de producción/publicación del long-form anchor con URL, fecha, canal, visibilidad, metadata publicada y responsable de aprobación.

---

## Flujo Esperado

Cuando el long-form anchor / visualizer pasa de pendiente a publicado, el flujo esperado era:

Producción humana

↓

Revisión humana

↓

Publicación

↓

Registro de publicación

↓

Actualización de `PROJECT_STATE.md`

↓

Actualización o suplemento de evidencia G2

↓

Reconciliación de G3-G6 afectados

↓

Preparación de medición post-publicación

---

## Flujo Observado

El estado publicado apareció en `OperationsContext.md` y fue confirmado por el operador, pero documentos operativos y entregables previos siguieron tratando el visualizer como pendiente.

La discrepancia permitió que G2-G6 mantuvieran una premisa desactualizada: ausencia de long-form anchor en el canal de artista.

---

## Impacto

- Reduce la confiabilidad de `PROJECT_STATE.md` como fuente única de estado operativo.
- Puede provocar trabajo duplicado, especialmente producir otro visualizer sin reconciliar el publicado.
- Desordena la secuencia de gates: G3 y G6 pueden seguir priorizando "publicar anchor" cuando la tarea correcta es verificar y medir el anchor ya publicado.
- Puede llevar a conclusiones incorrectas sobre readiness, analytics y próximos pasos.
- Mantiene abierto el riesgo de asumir erróneamente consolidación OAC cuando OAC sigue pendiente.
- Debilita trazabilidad de aprobación, publicación y aprendizaje operativo.

---

## Riesgo Para Corbenn Labs

El riesgo principal es que el sistema opere con documentación vencida aunque la realidad operativa haya cambiado.

Si este comportamiento se repite, Corbenn Labs puede producir entregables técnicamente bien formados pero basados en premisas falsas, reduciendo la confianza del operador en el Core y afectando la separación entre evidencia, estrategia, producción y analytics.

---

## Corrección Requerida

- Actualizar `PROJECT_STATE.md` con visualizer publicado y OAC pendiente/en curso.
- Registrar URL/ID, fecha de publicación, canal, visibilidad, título, descripción, thumbnail y responsable de aprobación del visualizer.
- Marcar `projects/oskar-corbenn/audits/YouTubeEvidenceGapReview.md` como parcialmente superseded por `projects/oskar-corbenn/audits/YouTubeEvidenceGapReviewSupplement-2026-07-04.md`.
- Reconciliar `projects/oskar-corbenn/marketing/youtube-growth-strategy.md` para cambiar el supuesto de "publicar anchor" a "verificar anchor publicado y medir post-publicación".
- Reconciliar `projects/oskar-corbenn/releases/el-cambio-de-tono/content/long-form-anchor-brief.md` y `projects/oskar-corbenn/releases/el-cambio-de-tono/content/Visualizer_Edit_Plan.md` con el asset ya publicado.
- No asumir OAC oficial hasta que exista evidencia documentada de elegibilidad, aplicación o consolidación.
