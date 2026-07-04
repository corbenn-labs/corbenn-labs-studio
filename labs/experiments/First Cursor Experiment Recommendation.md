# First Cursor Experiment Recommendation

## Objetivo

Determinar cuál debe ser el primer experimento de integración con Cursor para reducir fricción operativa sin alterar la arquitectura de Corbenn Labs.

Capacidades analizadas:

- AGENTS.md
- Project Rules
- Skills
- Subagents

---

## AGENTS.md

### 1. Complejidad De Implementación

Baja.

Requiere crear un archivo Markdown con instrucciones base.

### 2. Riesgo Para Corbenn Labs

Bajo.

El riesgo principal es duplicar instrucciones ya existentes en `SYSTEM_BOOT.md` o `MasterContext_v2.md`.

### 3. Beneficio Esperado

Medio.

Puede reducir instrucciones repetidas al iniciar chats, pero ofrece menos control que Project Rules.

### 4. Tiempo Estimado De Implementación

15-30 minutos.

### 5. Impacto En La Experiencia Del Operador

Medio.

Ayuda a recordar reglas base, pero probablemente no resuelve por completo la invocación mínima del CEO.

### 6. Dependencias

- Definir qué instrucciones mínimas deben vivir en `AGENTS.md`.
- Evitar duplicar autoridad documental.

### 7. Orden Recomendado

Después.

Es simple, pero menos preciso para validar un experimento controlado de invocación.

---

## Project Rules

### 1. Complejidad De Implementación

Baja-media.

Requiere crear una regla `.mdc` con alcance y comportamiento claros.

### 2. Riesgo Para Corbenn Labs

Bajo-medio.

El riesgo principal es que la regla duplique documentos oficiales o sea demasiado amplia.

### 3. Beneficio Esperado

Alto.

Puede reducir la carga inicial del operador y recordar a Cursor qué documentos debe respetar antes de actuar.

### 4. Tiempo Estimado De Implementación

30-60 minutos.

### 5. Impacto En La Experiencia Del Operador

Alto.

Es la capacidad con mejor relación entre bajo riesgo y reducción de pasos manuales para invocar al CEO.

### 6. Dependencias

- Definir una regla mínima.
- Mantener los documentos oficiales como fuente de verdad.
- No copiar contenido extenso de `SYSTEM_BOOT.md`, `MasterContext_v2.md` o `PROJECT_STATE.md`.

### 7. Orden Recomendado

Primero.

Es el mejor candidato para validar si Cursor puede reducir la invocación mínima sin cambiar la arquitectura.

---

## Skills

### 1. Complejidad De Implementación

Media.

Requiere diseñar una skill con descripción clara, activación adecuada y límites operativos.

### 2. Riesgo Para Corbenn Labs

Medio.

Puede convertirse en una capa paralela de proceso si se diseña antes de validar qué tareas son realmente repetibles.

### 3. Beneficio Esperado

Alto, pero más adelante.

Puede ser muy útil para tareas repetibles como auditorías, briefings o validaciones, pero requiere claridad de proceso.

### 4. Tiempo Estimado De Implementación

1-3 horas para una skill mínima bien definida.

### 5. Impacto En La Experiencia Del Operador

Medio-alto.

Reduce pasos cuando existe una tarea repetible clara, pero no necesariamente mejora el arranque general del sistema.

### 6. Dependencias

- Identificar un workflow repetible validado.
- Definir cuándo debe activarse.
- Evitar duplicar agentes o AIP.

### 7. Orden Recomendado

Después.

Debe probarse cuando ya exista evidencia suficiente de una tarea repetible específica.

---

## Subagents

### 1. Complejidad De Implementación

Alta.

Requiere diseñar agentes nativos de Cursor, límites, contexto, comportamiento y relación con los contratos documentales existentes.

### 2. Riesgo Para Corbenn Labs

Alto.

Puede duplicar especialistas existentes, crear confusión con la arquitectura interna o convertir contratos documentales en componentes paralelos.

### 3. Beneficio Esperado

Alto a largo plazo.

Podría mejorar ejecución especializada, aislamiento de contexto y paralelismo, pero solo después de validar bien los contratos.

### 4. Tiempo Estimado De Implementación

3-6 horas por subagent inicial, más pruebas.

### 5. Impacto En La Experiencia Del Operador

Alto potencial, pero con mayor riesgo.

Puede simplificar invocación directa de especialistas, pero también puede romper la claridad entre CEO, AIP y contratos documentales.

### 6. Dependencias

- Contratos de agentes completamente estables.
- Validación operativa repetida.
- Decisión clara sobre qué parte vive en Cursor y qué parte sigue en documentación.
- Gobernanza para evitar proliferación de agentes.

### 7. Orden Recomendado

Al final.

No debe ser el primer experimento.

---

## Tabla Comparativa

| Capacidad | Complejidad | Riesgo | Beneficio esperado | Tiempo estimado | Impacto UX | Dependencias | Orden |
|---|---|---|---|---|---|---|---|
| AGENTS.md | Baja | Bajo | Medio | 15-30 min | Medio | Instrucciones mínimas sin duplicar autoridad | Después |
| Project Rules | Baja-media | Bajo-medio | Alto | 30-60 min | Alto | Regla mínima y fuentes de verdad claras | Primero |
| Skills | Media | Medio | Alto posterior | 1-3 h | Medio-alto | Workflow repetible validado | Después |
| Subagents | Alta | Alto | Alto a largo plazo | 3-6 h por subagent | Alto potencial | Contratos estables y gobernanza | Al final |

---

## Recomendación

La primera capacidad a probar debe ser:

Project Rules.

Razón:

Ofrece la mejor combinación de bajo riesgo, implementación simple e impacto directo en la experiencia del operador.

Es la opción más adecuada para validar el objetivo inmediato de la Fase 3: reducir la invocación mínima del CEO sin alterar la arquitectura de Corbenn Labs ni mover las fuentes de verdad fuera del repositorio.
