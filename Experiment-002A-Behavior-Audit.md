# Experiment 002A Behavior Audit

## Objetivo

Analizar por qué el modelo decidió ignorar un contrato que sí conocía durante el Experimento 002A.

Este documento no propone soluciones.

---

## Evidencia Observada

- El CEO respondió generando una estrategia directamente.
- Al preguntarle por qué, reconoció correctamente que violó su propio contrato.
- El modelo demostró conocer el workflow correcto:

CEO

↓

Researcher

↓

Marketing Strategist

↓

CEO

---

## 1. Hipótesis: Problema De Prioridad De Instrucciones

Es posible que el modelo priorizara la solicitud inmediata del operador sobre el contrato documental del CEO.

Aunque el contrato estaba disponible o era conocido, la instrucción conversacional pudo haber sido interpretada como una tarea directa que debía completarse en ese momento.

### Evidencia Que La Respalda

- El modelo reconoció después que violó su propio contrato.
- Esto indica que el contrato no era desconocido.
- La falla ocurrió en la aplicación de prioridad, no necesariamente en el acceso a la información.
- La respuesta inicial siguió el patrón general de ayudar al usuario completando la tarea solicitada.

### Evidencia Que La Debilita

- Si el contrato hubiera tenido prioridad efectiva en el contexto activo, el modelo debería haberse detenido antes de producir estrategia.
- La presencia de conocimiento posterior no prueba que el contrato estuviera correctamente priorizado durante la primera respuesta.

---

## 2. Hipótesis: Problema De Diseño De La Invocación

Es posible que la invocación mínima no haya obligado al modelo a entrar en modo CEO contractual antes de responder.

La frase de invocación pudo activar una identidad general del CEO, pero no necesariamente el proceso completo:

comprender

↓

planificar

↓

delegar

↓

revisar

### Evidencia Que La Respalda

- El CEO produjo estrategia directamente, lo cual pertenece a otra fase.
- El modelo no abrió primero una fase de investigación o estrategia según el flujo correcto.
- Al ser cuestionado, pudo explicar cuál debió haber sido el flujo.
- Esto sugiere que la invocación no fijó suficientemente el comportamiento operativo inicial.

### Evidencia Que La Debilita

- El modelo sí parecía tener acceso conceptual al workflow correcto.
- La falla no fue ausencia total de contexto, sino no aplicar ese contexto al momento de actuar.

---

## 3. Hipótesis: Comportamiento Esperado De Los LLM

Es posible que el modelo haya seguido una tendencia común de los LLM: completar la tarea solicitada de forma útil aunque existan restricciones de rol, especialmente cuando esas restricciones compiten con una petición directa.

Los LLM pueden conocer una regla y aun así fallar al aplicarla si la instrucción inmediata parece pedir un resultado final.

### Evidencia Que La Respalda

- El modelo pudo explicar la regla después del error.
- La capacidad de explicar una regla no garantiza cumplimiento en generación inicial.
- El modelo generó una respuesta útil desde una perspectiva general, pero incorrecta desde la arquitectura de Corbenn Labs.
- Esto coincide con una falla típica de seguimiento de instrucciones: conocimiento del contrato sin ejecución disciplinada del contrato.

### Evidencia Que La Debilita

- No se puede atribuir toda la falla al comportamiento general del LLM sin revisar el contexto exacto de invocación.
- Un contexto de mayor prioridad podría haber reducido la probabilidad de esta falla.

---

## Conclusión

La causa más probable no es que el modelo desconociera el contrato.

La evidencia indica que el modelo conocía el workflow correcto, pero no lo aplicó durante la primera respuesta.

La falla parece surgir de una combinación de:

- prioridad insuficiente del contrato frente a la solicitud inmediata;
- invocación mínima que no fijó explícitamente el modo operativo;
- tendencia del LLM a completar la tarea directamente cuando el usuario formula un objetivo que parece pedir resultado final.

El Experimento 002A demuestra que reducir fricción de invocación no basta si el contrato no se aplica consistentemente en el primer turno.

---

## Estado

Registrado.
