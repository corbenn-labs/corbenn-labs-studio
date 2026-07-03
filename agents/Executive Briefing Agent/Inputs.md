# Inputs Del Executive Briefing Agent

## Inputs Obligatorios

### Para Briefing De Entregable

- Entregable fuente
- Especialista responsable o dueño de la fuente
- Gate del workflow o fase del workflow
- Decisión requerida
- `PROJECT_STATE.md`
- `projects/oskar-corbenn/docs/MasterContext_v2.md`
- Documentos relevantes del proyecto activo

### Para Briefing De Sesión

- Estado operativo actual
- Prioridades activas
- Bloqueos actuales
- Siguiente acción solicitada
- `PROJECT_STATE.md`
- `projects/oskar-corbenn/docs/MasterContext_v2.md`

---

## Inputs Opcionales

Cuando estén disponibles:

- Nivel de confianza
- Severidad de riesgos
- Entregables aprobados previamente
- Analytics
- Feedback humano
- Session log
- Estado de producción
- Estimaciones de tiempo o esfuerzo presentes en el material fuente

---

## Regla Para Inputs Faltantes

Si falta un input obligatorio, el Executive Briefing Agent debe indicar qué falta antes de producir el briefing.

Puede resumir la información disponible si el input faltante no cambia el significado del material fuente.

No debe llenar vacíos con suposiciones.
