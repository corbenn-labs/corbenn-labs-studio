# Experiment 002

## 1. Problema

El operador todavía no cuenta con una forma validada de iniciar una sesión nueva e invocar correctamente al CEO de Corbenn Labs con fricción mínima.

El Experimento 001 demostró que crear una instrucción persistente válida no garantiza por sí solo que el agente cargue el contexto correcto ni consulte los documentos del repositorio.

El problema real no es solo reducir texto en el prompt inicial.

El problema es validar qué mecanismo puede hacer que una invocación mínima produzca comportamiento consistente, verificable y alineado con la arquitectura de Corbenn Labs.

---

## 2. Hipótesis

Si se identifica una capacidad nativa de Cursor que active de forma confiable el contexto necesario para el CEO, entonces el operador podrá iniciar una sesión nueva con menos pasos manuales sin sacrificar fidelidad arquitectónica.

La reducción de fricción solo cuenta como válida si el agente demuestra que usó las fuentes autorizadas y no respondió desde conocimiento general.

---

## 3. Métricas De Éxito

El experimento será exitoso si:

- El operador puede iniciar la sesión con una instrucción breve.
- El agente identifica correctamente que debe operar como CEO de Corbenn Labs.
- El agente usa o solicita las fuentes autorizadas antes de responder.
- El agente respeta `PROJECT_STATE.md` como estado operativo.
- El agente respeta `MasterContext_v2.md` como autoridad arquitectónica.
- El agente no inventa información.
- El agente responde en español.
- El agente responde con comprensión del objetivo, plan de ejecución y decisión requerida.
- El operador no necesita repetir manualmente todo el boot sequence.
- El resultado es reproducible en más de una sesión nueva.

---

## 4. Restricciones

- No modificar arquitectura.
- No modificar agentes existentes.
- No cambiar responsabilidades.
- No mover fuentes de verdad.
- No reemplazar `PROJECT_STATE.md`.
- No reemplazar `MasterContext_v2.md`.
- No depender de memoria conversacional previa.
- No aceptar resultados que parezcan correctos pero no demuestren uso de fuentes autorizadas.
- No considerar éxito si el agente responde desde conocimiento general.
- No seleccionar tecnología antes de definir el comportamiento esperado.

---

## 5. Riesgos

- El agente puede parecer alineado sin haber consultado documentos.
- La reducción de fricción puede ocultar pérdida de control.
- El mecanismo probado puede depender del contexto activo del editor.
- El operador puede interpretar una respuesta correcta como prueba suficiente sin evidencia de fuente.
- El comportamiento puede funcionar una vez y fallar en otra sesión.
- El sistema puede reducir pasos manuales pero aumentar ambigüedad.
- La prueba puede validar comodidad, pero no fidelidad arquitectónica.

---

## 6. Evidencia Que Confirmará El Éxito

Confirmará éxito si, en una sesión nueva:

1. El operador usa una instrucción breve.
2. El agente no responde inmediatamente desde conocimiento general.
3. El agente demuestra que usó o solicitó las fuentes autorizadas.
4. El agente identifica correctamente el estado operativo.
5. El agente identifica correctamente la autoridad arquitectónica.
6. El agente produce una respuesta inicial compatible con CEO v2.2.
7. La misma prueba se repite con resultado consistente.
8. La fricción del operador disminuye sin reducir fidelidad al sistema.

El éxito debe basarse en evidencia observada, no en suposiciones sobre cómo debería comportarse Cursor.

---

## Estado

Diseñado.

No implementado.
