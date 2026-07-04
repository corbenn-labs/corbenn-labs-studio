# Experiment 002A

## 1. Objetivo

Validar si `AGENTS.md` reduce la fricción de invocación del operador mejor que el enfoque probado con Project Rules en el Experimento 001.

El experimento busca comprobar si el operador puede iniciar un chat nuevo con menos preparación manual y obtener una respuesta alineada con la arquitectura de Corbenn Labs.

---

## 2. Hipótesis

Si `AGENTS.md` se carga automáticamente como instrucciones del proyecto, entonces el operador podrá invocar al CEO de Corbenn Labs con una instrucción mínima y el agente tendrá mayor probabilidad de respetar el contexto base del repositorio que con la Project Rule probada en el Experimento 001.

---

## 3. Implementación Propuesta

Crear un `AGENTS.md` de prueba en la raíz del proyecto.

Usar una sesión nueva de Cursor.

Invocar al CEO con una instrucción mínima.

Observar si el agente:

- Reconoce el rol correcto.
- Usa o solicita las fuentes autorizadas.
- Responde según el comportamiento esperado del CEO.
- Evita responder desde conocimiento general.

Este experimento no debe modificar arquitectura, agentes existentes ni documentos de autoridad.

---

## 4. Métricas De Éxito

El experimento será exitoso si:

- El operador puede iniciar con una instrucción mínima.
- El agente reconoce que debe actuar como CEO de Corbenn Labs.
- El agente respeta el estado operativo del sistema.
- El agente respeta la autoridad arquitectónica.
- El agente no inventa contexto.
- El agente responde en español.
- El agente responde con comprensión del objetivo, plan de ejecución y decisión requerida.
- El operador no necesita adjuntar manualmente todos los documentos base.
- El resultado es reproducible en más de una sesión nueva.

---

## 5. Criterios De Fracaso

El experimento fracasa si:

- El agente responde desde conocimiento general.
- El agente no reconoce correctamente el rol de CEO.
- El agente no demuestra haber usado o solicitado fuentes autorizadas.
- El agente inventa información.
- El agente responde con formato equivocado.
- El operador debe adjuntar manualmente todos los documentos base.
- El resultado solo funciona una vez y no es reproducible.
- La mejora reduce pasos manuales pero degrada fidelidad arquitectónica.

---

## 6. Riesgos

- `AGENTS.md` puede cargarse pero no obligar lectura documental.
- El agente puede parecer alineado sin haber consultado fuentes.
- El archivo puede sobreaplicarse a conversaciones donde no corresponde.
- El operador puede confundir reducción de fricción con validación arquitectónica.
- Si el archivo es demasiado largo, puede duplicar fuentes de verdad.
- Si el archivo es demasiado corto, puede no guiar suficientemente la invocación.

---

## 7. Evidencia Esperada

La evidencia esperada incluye:

- Registro de la instrucción mínima usada por el operador.
- Respuesta inicial del agente en una sesión nueva.
- Confirmación observable de si el agente usó o solicitó fuentes autorizadas.
- Comparación del número de pasos manuales frente al Experimento 001.
- Observación de si el comportamiento se repite en más de una sesión.
- Evaluación de si el CEO respondió con objetivo, plan y decisión requerida.

---

## Estado

Diseñado.

No implementado.
