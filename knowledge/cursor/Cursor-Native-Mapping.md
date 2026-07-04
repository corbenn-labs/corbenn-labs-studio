# Cursor Native Mapping

## Objetivo

Comparar la arquitectura actual de Corbenn Labs contra capacidades nativas de Cursor para evaluar qué componentes conviene mantener, adaptar parcialmente, migrar completamente o no migrar.

Este documento no propone implementación.

---

## SYSTEM_BOOT.md

Equivalente nativo en Cursor:

- Cursor Rules
- AGENTS.md
- Project instructions

Beneficio de migrarlo:

- Cursor podría cargar reglas base de comportamiento con menos intervención manual del operador.
- Reduciría pasos repetitivos al iniciar una sesión.

Riesgos:

- Perder visibilidad explícita del boot sequence.
- Mezclar reglas globales de Cursor con autoridad interna de Corbenn Labs.
- Dificultar auditoría si las instrucciones quedan repartidas entre sistema y repo.

Recomendación:

Adaptarlo parcialmente.

Mantener `SYSTEM_BOOT.md` como autoridad visible y evaluar una versión mínima en reglas nativas solo para recordar que debe leerse.

---

## AGENT.md

Equivalente nativo en Cursor:

- AGENTS.md
- Cursor subagents
- Cursor skills

Beneficio de migrarlo:

- Haría más directa la invocación de especialistas.
- Reduciría la necesidad de adjuntar manualmente archivos con `@`.

Riesgos:

- Cursor no reconoce automáticamente cada `AGENT.md` dentro de `agents/` como agente ejecutable.
- Migrarlo completamente podría romper la estructura documental interna de Corbenn Labs.
- Podría acoplar el sistema a una implementación específica de Cursor.

Recomendación:

Adaptarlo parcialmente.

Mantener `AGENT.md` como contrato documental y considerar equivalentes nativos solo como capa de invocación.

---

## Workflow.md

Equivalente nativo en Cursor:

- Skills
- Subagent instructions
- Rules específicas por tarea

Beneficio de migrarlo:

- Podría guiar ejecución paso a paso dentro de una skill o subagent.
- Reduciría la probabilidad de que Composer ignore el flujo definido.

Riesgos:

- Convertir workflows documentales en lógica nativa puede hacerlos menos auditables.
- Puede duplicar instrucciones si se mantiene también el archivo original.

Recomendación:

Mantenerlo como está.

Usarlo como documento fuente del contrato del agente.

---

## Inputs.md

Equivalente nativo en Cursor:

- Skill arguments
- Prompt templates
- Subagent instructions

Beneficio de migrarlo:

- Podría validar inputs requeridos de forma más consistente.
- Reduciría errores por falta de contexto.

Riesgos:

- Cursor Composer no aplica automáticamente validación formal de inputs desde archivos arbitrarios.
- Una migración completa podría requerir automatización prematura.

Recomendación:

Adaptarlo parcialmente.

Mantenerlo documental y usarlo como checklist explícito de invocación.

---

## Outputs.md

Equivalente nativo en Cursor:

- Prompt templates
- Skill output instructions
- Subagent response format

Beneficio de migrarlo:

- Mayor consistencia en formatos de salida.
- Menos correcciones de UX posteriores.

Riesgos:

- Si se duplica en reglas nativas y documentación, pueden divergir.
- El formato puede volverse rígido antes de validarse operativamente.

Recomendación:

Adaptarlo parcialmente.

Mantener `Outputs.md` como fuente de verdad y usar instrucciones nativas solo para reforzar formato.

---

## DecisionFramework.md

Equivalente nativo en Cursor:

- Rules
- Subagent instructions
- Skill instructions

Beneficio de migrarlo:

- Ayudaría a que el agente respete prioridades y límites sin depender de contexto manual completo.

Riesgos:

- Puede mezclarse con razonamiento general del modelo si no se mantiene como fuente explícita.
- Riesgo de duplicación con `AGENT.md`.

Recomendación:

Mantenerlo como está.

Debe seguir siendo parte del contrato documental del especialista.

---

## AIP

Equivalente nativo en Cursor:

- No tiene equivalente directo.
- Parcialmente se relaciona con skills, subagents, rules y uso de `@context`.

Beneficio de migrarlo:

- Podría automatizar parte de la preparación de contexto.
- Reduciría errores de invocación manual.

Riesgos:

- Convertirlo en componente nativo podría hacerlo parecer agente.
- Podría asumir decisiones de routing que pertenecen al CEO.
- Riesgo de crear un superagente o dispatcher prematuro.

Recomendación:

No migrarlo.

Mantenerlo como protocolo oficial de Corbenn Labs.

---

## CEO

Equivalente nativo en Cursor:

- Subagent
- AGENTS.md
- Skill, parcialmente

Beneficio de migrarlo:

- Facilitaría invocación directa como punto de entrada del sistema.
- Podría reducir fricción de operador en chats nuevos.

Riesgos:

- El CEO es rol central de arquitectura, no solo una herramienta.
- Migración completa podría diluir autoridad y trazabilidad documental.
- Puede quedar acoplado al comportamiento de subagents de Cursor.

Recomendación:

Adaptarlo parcialmente.

Mantener documentación actual y evaluar una capa nativa de invocación mínima.

---

## Especialistas

Equivalente nativo en Cursor:

- Subagents
- Skills

Beneficio de migrarlo:

- Invocación más limpia.
- Menos necesidad de adjuntar manualmente contratos completos.
- Mayor reutilización operativa.

Riesgos:

- Cada especialista podría divergir de su contrato documental.
- Migración completa antes de validación operativa puede fijar malas decisiones.
- Algunos especialistas aún están pendientes de validación.

Recomendación:

Adaptarlos parcialmente.

Solo considerar migración completa después de validación operativa repetida.

---

## Executive Briefing

Equivalente nativo en Cursor:

- Skill
- Subagent

Beneficio de migrarlo:

- Es una tarea repetible, acotada y con output claro.
- Podría invocarse fácilmente cuando haya un documento largo.
- Reduciría fricción de lectura para el CEO.

Riesgos:

- Si se invoca automáticamente en exceso, puede crear documentación innecesaria.
- Puede ocultar detalles si se usa como sustituto de revisión.

Recomendación:

Adaptarlo parcialmente.

Es buen candidato futuro para skill o subagent, pero debe conservar `Outputs.md` como fuente de verdad.

---

## PROJECT_STATE.md

Equivalente nativo en Cursor:

- No tiene equivalente directo.
- Parcialmente puede recordarse mediante rules.

Beneficio de migrarlo:

- Ninguno suficiente para reemplazarlo.
- Cursor no debe convertirse en fuente de estado operativo.

Riesgos:

- Perder la Single Source of Truth operativa.
- Crear estado implícito en conversaciones o reglas.
- Desalinear futuras sesiones.

Recomendación:

No migrarlo.

Debe permanecer como única fuente de estado operativo.

---

## MasterContext_v2.md

Equivalente nativo en Cursor:

- Project rules, parcialmente.
- AGENTS.md, parcialmente.

Beneficio de migrarlo:

- Podría recordar principios arquitectónicos en cada sesión.

Riesgos:

- Es documento protegido.
- Migrarlo completamente dispersaría autoridad arquitectónica.
- Reglas nativas podrían quedar desactualizadas frente al documento fuente.

Recomendación:

No migrarlo.

Puede referenciarse desde reglas nativas, pero debe permanecer como autoridad arquitectónica protegida.

---

## Conclusión

Corbenn Labs no debe migrar completamente su arquitectura documental a capacidades nativas de Cursor en esta etapa.

La mejor dirección es una adaptación parcial:

- Mantener documentos como fuentes de verdad.
- Usar capacidades nativas de Cursor solo como capa de invocación y recordatorio.
- No mover estado operativo ni autoridad arquitectónica fuera del repositorio.
- Migrar o formalizar especialistas solo después de validación operativa repetida.
