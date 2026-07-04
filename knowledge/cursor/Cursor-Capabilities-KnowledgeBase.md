# Cursor Capabilities Knowledge Base

## Objetivo

Construir una base de conocimiento técnica sobre capacidades nativas de Cursor que podrían aprovecharse en Corbenn Labs para futuras decisiones.

Este documento no propone implementación ni diseña arquitectura.

---

# AGENTS.md

## Propósito

Definir instrucciones simples y persistentes para el Agent dentro de un repositorio o subdirectorio.

## Qué Problema Resuelve

Reduce la necesidad de repetir contexto básico del proyecto, convenciones, estilo de trabajo o reglas generales en cada chat.

## Cómo Funciona

Cursor puede leer archivos `AGENTS.md` ubicados en la raíz o en subdirectorios.

Los archivos más específicos por ruta pueden aplicarse al trabajar dentro de esas áreas.

## Ventajas

- Es simple.
- Usa Markdown normal.
- Es fácil de auditar.
- Puede versionarse en el repositorio.
- Sirve como capa base de instrucciones.

## Limitaciones

- No ofrece activación granular avanzada.
- No reemplaza contratos documentales complejos.
- No tiene la misma flexibilidad que reglas con globs.
- No convierte automáticamente carpetas arbitrarias en agentes.

## Casos Ideales De Uso

- Instrucciones generales del repo.
- Convenciones de tono.
- Reglas básicas de comportamiento.
- Recordatorios de autoridad documental.

## Casos Donde No Debería Utilizarse

- Cuando se requiere activación por tipo de archivo.
- Cuando se necesita un workflow complejo.
- Cuando la instrucción debe ejecutarse solo bajo condiciones específicas.

## Compatibilidad Con Corbenn Labs

Alta.

Puede complementar el sistema documental, pero no debe reemplazar `SYSTEM_BOOT.md`, `MasterContext_v2.md` ni `PROJECT_STATE.md`.

## Nivel De Madurez

Listo para usar.

---

# Project Rules (.cursor/rules)

## Propósito

Definir reglas persistentes, versionadas y configurables para guiar el comportamiento del Agent en el proyecto.

## Qué Problema Resuelve

Reduce errores repetidos y permite aplicar instrucciones específicas según contexto, ruta o tipo de trabajo.

## Cómo Funciona

Se definen archivos `.mdc` dentro de `.cursor/rules`.

Pueden tener frontmatter para describir cuándo aplican.

Pueden estar siempre activas, aplicarse por globs, activarse por relevancia o invocarse manualmente.

## Ventajas

- Son versionables.
- Permiten reglas granulares.
- Pueden aplicarse por áreas del repo.
- Reducen repetición de instrucciones.
- Encajan bien con estándares técnicos.

## Limitaciones

- Demasiadas reglas pueden crear ruido.
- Reglas vagas reducen precisión.
- No sustituyen documentación de autoridad.
- No aplican a todos los modos de edición de Cursor.

## Casos Ideales De Uso

- Convenciones de documentación.
- Reglas de seguridad.
- Estándares de formato.
- Recordatorios arquitectónicos.
- Reglas específicas por carpeta.

## Casos Donde No Debería Utilizarse

- Para reemplazar documentos fuente.
- Para duplicar documentos largos.
- Para reglas temporales.
- Para lógica de negocio cambiante.

## Compatibilidad Con Corbenn Labs

Muy alta.

Puede servir como capa de guía operativa, siempre que las fuentes de verdad sigan en los documentos oficiales del repo.

## Nivel De Madurez

Listo para usar.

---

# Skills

## Propósito

Empaquetar workflows, instrucciones y conocimiento especializado reutilizable dentro de Cursor.

## Qué Problema Resuelve

Permite reutilizar procesos repetibles sin tener que reexplicarlos en cada chat.

## Cómo Funciona

Una skill se define mediante un `SKILL.md` y puede incluir instrucciones, scripts, referencias y recursos.

Cursor puede descubrir skills y usarlas cuando son relevantes o cuando el operador las invoca explícitamente.

## Ventajas

- Reutilizables.
- Versionables.
- Pueden contener procedimientos completos.
- Útiles para tareas repetitivas.
- Pueden activarse por intención o invocación.

## Limitaciones

- Requieren buen diseño de descripción.
- Pueden volverse complejas si incluyen scripts.
- No son ideales para instrucciones siempre activas.
- Pueden duplicar documentación si no se gobiernan bien.

## Casos Ideales De Uso

- Auditorías repetibles.
- Generación de reportes estándar.
- Validaciones documentales.
- Procesos editoriales.
- Tareas operativas con pasos estables.

## Casos Donde No Debería Utilizarse

- Para reglas permanentes del proyecto.
- Para roles de autoridad.
- Para estado operativo.
- Para tareas no repetidas aún.

## Compatibilidad Con Corbenn Labs

Alta.

Encajan bien con procesos repetibles, pero no deben reemplazar agentes ni protocolos sin validación operativa.

## Nivel De Madurez

Listo para usar.

---

# Subagents

## Propósito

Delegar tareas especializadas a agentes con contexto separado dentro de Cursor.

## Qué Problema Resuelve

Permite aislar investigaciones, revisiones o tareas largas sin saturar el contexto principal.

## Cómo Funciona

Cursor puede usar subagents internos o personalizados.

Los subagents tienen instrucciones propias y pueden ejecutarse de forma separada del hilo principal.

## Ventajas

- Aíslan contexto.
- Permiten paralelismo.
- Reducen ruido en la conversación principal.
- Son útiles para exploración amplia o revisión independiente.

## Limitaciones

- Aumentan complejidad.
- Pueden perder contexto si no reciben instrucciones claras.
- Pueden duplicar roles existentes.
- Requieren gobernanza para evitar proliferación.

## Casos Ideales De Uso

- Investigación amplia.
- Auditoría independiente.
- Revisión de grandes áreas del repo.
- Comparación de alternativas.
- Exploración de código o documentación compleja.

## Casos Donde No Debería Utilizarse

- Para tareas simples.
- Para decisiones de negocio.
- Para reemplazar al CEO.
- Para especialistas aún no validados.
- Cuando una skill o regla basta.

## Compatibilidad Con Corbenn Labs

Media-alta.

Útiles para análisis y validación, pero deben adoptarse con cuidado para no duplicar la arquitectura de especialistas.

## Nivel De Madurez

Requiere experimentación.

---

# Hooks

## Propósito

Ejecutar validaciones, controles o automatizaciones alrededor de eventos del Agent.

## Qué Problema Resuelve

Permiten observar o controlar acciones del Agent antes, durante o después de ciertos eventos.

## Cómo Funciona

Se configuran mediante hooks de proyecto o usuario.

Pueden ejecutarse ante eventos como comandos, edición, uso de herramientas o cambios de sesión.

## Ventajas

- Aportan control.
- Pueden mejorar seguridad.
- Pueden registrar acciones.
- Pueden prevenir operaciones riesgosas.
- Ayudan a gobernanza.

## Limitaciones

- Agregan complejidad operativa.
- Requieren mantenimiento.
- Pueden fallar o bloquear flujos si están mal diseñados.
- No son necesarios para simple guía de comportamiento.

## Casos Ideales De Uso

- Controles de seguridad.
- Auditoría automática.
- Bloqueo de comandos riesgosos.
- Validaciones antes de cambios sensibles.

## Casos Donde No Debería Utilizarse

- Para instrucciones simples.
- Para reemplazar revisión humana.
- Para automatizar decisiones de negocio.
- Cuando una regla o skill es suficiente.

## Compatibilidad Con Corbenn Labs

Media.

Pueden ser útiles más adelante para gobernanza, pero no son necesarios para la operación documental inicial.

## Nivel De Madurez

Requiere experimentación.

---

# Semantic Search

## Propósito

Buscar información por significado en vez de coincidencia exacta de texto.

## Qué Problema Resuelve

Ayuda a encontrar conceptos, decisiones o patrones aunque no se conozcan los nombres exactos de archivos o símbolos.

## Cómo Funciona

Cursor indexa el workspace y permite consultas semánticas sobre código y documentación.

La búsqueda puede encontrar contenido relacionado por contexto conceptual.

## Ventajas

- Muy útil para repos grandes.
- Reduce tiempo de exploración.
- Ayuda a entender arquitectura.
- Complementa búsquedas exactas.

## Limitaciones

- Depende de la calidad del índice.
- Puede traer resultados cercanos pero no exactos.
- No sustituye lectura crítica.
- Puede ser menos útil para nombres exactos.

## Casos Ideales De Uso

- Explorar una base documental.
- Encontrar decisiones arquitectónicas.
- Ubicar patrones dispersos.
- Entender cómo funciona un sistema.

## Casos Donde No Debería Utilizarse

- Cuando se conoce la ruta exacta.
- Cuando se busca una cadena exacta.
- Cuando se requiere exhaustividad determinista.

## Compatibilidad Con Corbenn Labs

Muy alta.

Es útil para navegar documentación, decisiones, agentes, protocolos y estado del sistema.

## Nivel De Madurez

Listo para usar.

---

# Agentic Search

## Propósito

Permitir que el Agent combine varias formas de búsqueda, lectura y exploración para resolver preguntas complejas.

## Qué Problema Resuelve

Reduce el trabajo manual necesario para investigar temas distribuidos en varios archivos.

## Cómo Funciona

El Agent puede combinar búsqueda exacta, búsqueda semántica, lectura de archivos y exploración contextual.

La estrategia depende de la pregunta y del contexto disponible.

## Ventajas

- Útil para análisis amplios.
- Reduce exploración manual.
- Puede encontrar relaciones entre documentos.
- Funciona bien para auditorías y revisiones.

## Limitaciones

- Depende de prompts claros.
- Puede omitir información si la pregunta es ambigua.
- No garantiza exhaustividad absoluta.
- Requiere validación cuando el resultado es crítico.

## Casos Ideales De Uso

- Auditar consistencia documental.
- Mapear arquitectura.
- Encontrar duplicaciones.
- Investigar cómo se usa un concepto en el repo.

## Casos Donde No Debería Utilizarse

- Para búsquedas exactas simples.
- Para decisiones que requieren evidencia completa sin margen de omisión.
- Cuando ya se conoce el archivo exacto.

## Compatibilidad Con Corbenn Labs

Muy alta.

Encaja con análisis arquitectónicos, auditorías de consistencia y exploración de documentación.

## Nivel De Madurez

Listo para usar.

---

# MCP

## Propósito

Conectar Cursor con herramientas, APIs, servicios y fuentes externas mediante Model Context Protocol.

## Qué Problema Resuelve

Permite traer contexto o ejecutar acciones sobre sistemas externos sin depender solo del repositorio local.

## Cómo Funciona

Un servidor MCP expone herramientas, recursos o prompts.

Cursor puede conectarse a estos servidores para leer datos o ejecutar operaciones, según permisos y configuración.

## Ventajas

- Integra fuentes externas.
- Puede conectar documentación viva.
- Puede habilitar workflows con herramientas reales.
- Es extensible.

## Limitaciones

- Requiere configuración.
- Tiene implicaciones de seguridad.
- Puede requerir credenciales.
- Agrega dependencia externa.
- Puede ser innecesario si todo vive en el repo.

## Casos Ideales De Uso

- Integrar Linear, Notion, Datadog, GitHub u otras fuentes.
- Consultar sistemas externos autorizados.
- Traer datos vivos no disponibles en el repo.
- Automatizar operaciones controladas con herramientas externas.

## Casos Donde No Debería Utilizarse

- Cuando los datos ya están en el repositorio.
- Cuando no hay control de permisos.
- Cuando las fuentes contienen datos sensibles sin gobernanza.
- Cuando no existe una necesidad operativa validada.

## Compatibilidad Con Corbenn Labs

Alta en el futuro, si Corbenn Labs necesita conectar fuentes externas reales.

Para la base documental local actual, no es imprescindible.

## Nivel De Madurez

Listo para usar con servidores confiables.

Requiere experimentación para servidores propios.

---

# Plugins

## Propósito

Empaquetar y distribuir personalizaciones de Cursor como rules, skills, subagents, commands, MCP servers o hooks.

## Qué Problema Resuelve

Permiten distribuir una configuración Cursor completa de forma consistente entre usuarios, equipos o repositorios.

## Cómo Funciona

Un plugin se define como paquete con manifiesto y recursos asociados.

Puede instalarse localmente o distribuirse mediante mecanismos de Cursor.

## Ventajas

- Facilitan distribución.
- Pueden versionar un conjunto completo de capacidades.
- Son útiles para equipos.
- Reducen configuración manual en múltiples entornos.

## Limitaciones

- Agregan overhead.
- Requieren mantenimiento.
- Son excesivos para un solo repositorio pequeño.
- Pueden complicar gobernanza si se usan prematuramente.

## Casos Ideales De Uso

- Distribuir un kit interno de trabajo.
- Estandarizar Cursor para varios repositorios.
- Compartir rules, skills y hooks entre equipos.
- Versionar una configuración avanzada.

## Casos Donde No Debería Utilizarse

- Para un único repo si rules o skills locales bastan.
- Antes de validar procesos.
- Para encapsular arquitectura todavía cambiante.
- Cuando no hay necesidad de distribución.

## Compatibilidad Con Corbenn Labs

Media.

Puede ser útil si Corbenn Labs se expande a múltiples repositorios o equipos, pero no parece necesario para la etapa actual.

## Nivel De Madurez

Requiere experimentación.

---

# Resumen De Madurez

| Capacidad | Nivel De Madurez |
|---|---|
| AGENTS.md | Listo para usar |
| Project Rules (.cursor/rules) | Listo para usar |
| Skills | Listo para usar |
| Subagents | Requiere experimentación |
| Hooks | Requiere experimentación |
| Semantic Search | Listo para usar |
| Agentic Search | Listo para usar |
| MCP | Listo para usar con servidores confiables; requiere experimentación para servidores propios |
| Plugins | Requiere experimentación |
