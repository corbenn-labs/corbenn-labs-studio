# Experiment 001 Refined

## Método

PROBLEMA

↓

HIPÓTESIS

↓

CRITERIOS DE ÉXITO

↓

TECNOLOGÍA

---

## 1. Problema Que Queremos Resolver

El operador todavía debe realizar demasiada preparación manual antes de que el CEO pueda trabajar correctamente en un chat nuevo.

Actualmente, el operador debe recordar o indicar:

- Que debe leerse `SYSTEM_BOOT.md`.
- Que `MasterContext_v2.md` gobierna la arquitectura.
- Que `PROJECT_STATE.md` gobierna el estado operativo.
- Que `MasterContext.md` es contexto específico de Oskar Corbenn.
- Que el CEO debe responder en términos de objetivo, plan, decisión y siguiente acción.
- Que no debe modificar arquitectura ni documentos salvo autorización.
- Que debe reutilizar contexto existente antes de pedir información.

Esto aumenta fricción, tiempo de preparación y riesgo de que Composer responda usando conocimiento propio en lugar de seguir la arquitectura de Corbenn Labs.

---

## 2. Hipótesis

Si Cursor puede recibir instrucciones base persistentes o reutilizables que recuerden el protocolo mínimo de arranque, entonces el operador podrá iniciar un chat nuevo con una instrucción mucho más breve y el CEO seguirá operando bajo la arquitectura actual.

La invocación mínima debería permitir que el operador escriba algo cercano a:

```
Eres el CEO de Corbenn Labs.

Objetivo:
[objetivo de negocio]
```

Sin tener que adjuntar manualmente todos los documentos base en cada sesión.

---

## 3. Métricas De Éxito

El experimento será exitoso si:

- El operador reduce los pasos manuales iniciales en al menos 50%.
- El CEO identifica correctamente el objetivo de negocio.
- El CEO consulta o respeta `PROJECT_STATE.md` como fuente de estado operativo.
- El CEO respeta `MasterContext_v2.md` como autoridad arquitectónica.
- El CEO no confunde `MasterContext.md` con autoridad arquitectónica.
- El CEO no responde con formato de Executive Brief ante un objetivo nuevo.
- El CEO responde con:
  - comprensión del objetivo;
  - plan de ejecución;
  - decisión requerida.
- El CEO no inventa información faltante.
- El CEO pide aclaración solo cuando la información no existe en documentos disponibles.
- No se modifica arquitectura, agentes ni documentos fuente durante la prueba.

---

## 4. Restricciones

- No cambiar la arquitectura de Corbenn Labs.
- No modificar agentes existentes.
- No modificar `SYSTEM_BOOT.md`.
- No modificar `MasterContext_v2.md`.
- No modificar `PROJECT_STATE.md`.
- No convertir el AIP en agente.
- No crear nuevos especialistas.
- No duplicar fuentes de verdad.
- No mover estado operativo fuera de `PROJECT_STATE.md`.
- No mover autoridad arquitectónica fuera de `MasterContext_v2.md`.
- No asumir capacidades automáticas de Cursor que no existan.

---

## 5. Tecnologías Candidatas

Tecnologías candidatas a evaluar posteriormente:

- `AGENTS.md`
- Project Rules
- Skills
- Subagents

Este experimento aún no selecciona una tecnología.

La selección debe ocurrir después de validar el problema, los criterios de éxito y las restricciones.

---

## 6. Riesgos

- La tecnología elegida puede orientar comportamiento sin garantizar lectura real de documentos.
- El sistema puede parecer funcionar por memoria conversacional y no por configuración repetible.
- Una instrucción persistente demasiado larga puede duplicar documentos oficiales.
- Una instrucción persistente demasiado corta puede no reducir la fricción.
- Cursor puede seguir usando conocimiento general si la invocación no está suficientemente acotada.
- El operador puede creer que el contexto está cargado cuando no lo está.
- Se puede confundir una mejora de experiencia con un cambio arquitectónico.

---

## 7. Qué Evidencia Confirmará El Éxito

Confirmará éxito si, en un chat nuevo:

1. El operador usa una instrucción mínima.
2. El CEO responde sin pedir documentos base ya existentes.
3. El CEO usa el estado operativo correcto.
4. El CEO respeta la autoridad arquitectónica.
5. El CEO entrega una respuesta inicial con objetivo, plan y decisión requerida.
6. El CEO no inventa información ni altera responsabilidades.
7. El operador no necesita repetir manualmente el boot sequence.
8. El resultado es consistente en más de una prueba.

La evidencia mínima aceptable será una prueba documentada donde el CEO opere correctamente con una instrucción reducida y sin adjuntar manualmente todos los documentos base.

---

## Estado

Diseñado.

No implementado.
