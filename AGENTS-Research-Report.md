# AGENTS Research Report

## 1. Cómo Funciona AGENTS.md Según La Documentación Oficial

`AGENTS.md` es un archivo Markdown simple que Cursor puede usar como instrucciones persistentes para Agent.

Funciona como una alternativa ligera a Project Rules.

No requiere frontmatter.

No usa campos como:

- `description`
- `globs`
- `alwaysApply`

Su contenido sirve para dar contexto general del proyecto, convenciones, criterios o instrucciones de trabajo.

---

## 2. Cuándo Se Carga

Cursor puede detectar automáticamente un `AGENTS.md` ubicado en la raíz del proyecto.

También puede usar `AGENTS.md` ubicados en subdirectorios.

Cuando existen archivos anidados:

- Las instrucciones del directorio padre pueden combinarse con las del subdirectorio.
- Las instrucciones más específicas tienen precedencia sobre las generales.

En términos prácticos, `AGENTS.md` está pensado para ser cargado como contexto persistente del proyecto o del área donde se está trabajando.

---

## 3. Qué Puede Y Qué No Puede Hacer

### Puede

- Dar instrucciones persistentes al Agent.
- Definir contexto general del proyecto.
- Establecer convenciones de trabajo.
- Recordar reglas de comportamiento.
- Reducir instrucciones repetidas del operador.
- Servir como orientación base del repositorio.

### No Puede

- Activarse con condiciones configurables finas.
- Usar globs para tipos de archivo.
- Usar descripción semántica para decidir relevancia.
- Reemplazar contratos documentales de agentes.
- Garantizar por sí solo que el agente lea documentos específicos.
- Reemplazar `SYSTEM_BOOT.md`, `MasterContext_v2.md` o `PROJECT_STATE.md`.
- Controlar comportamiento fuera de los modos donde Cursor aplica instrucciones de Agent.

---

## 4. Si Puede Ayudar A Resolver El Problema De Experiment-002

Sí, puede ayudar parcialmente.

El problema de Experiment-002 es reducir la fricción de invocación del operador sin perder fidelidad arquitectónica.

`AGENTS.md` puede ayudar porque:

- Se carga automáticamente con el proyecto.
- No requiere que el operador invoque manualmente una rule.
- Puede recordar instrucciones base del repo.
- Puede reducir la necesidad de repetir el boot sequence en cada chat.

Pero no resuelve todo el problema por sí solo.

No garantiza automáticamente que el agente consulte documentos específicos ni que valide fuentes antes de responder.

Su valor principal está en reducir fricción inicial, no en validar ejecución completa.

---

## 5. Riesgos De Usarlo En Corbenn Labs

- Puede aplicarse de forma demasiado amplia.
- Puede influir en conversaciones donde no corresponde.
- Puede duplicar contenido de documentos de autoridad.
- Puede quedar desactualizado si repite instrucciones de `SYSTEM_BOOT.md` o `MasterContext_v2.md`.
- Puede dar falsa sensación de que el contexto fue cargado correctamente.
- Puede aumentar ruido contextual si se vuelve demasiado largo.
- Puede confundir orientación general con autoridad arquitectónica.
- Puede reducir fricción, pero no necesariamente demostrar fidelidad a fuentes autorizadas.

---

## Conclusión

`AGENTS.md` es una capacidad simple y útil para reducir fricción operativa básica.

Según la documentación oficial, su principal ventaja frente a una Project Rule es que puede cargarse automáticamente como instrucciones del proyecto sin depender de activación por `description`, `globs` o mención manual.

Su principal limitación es que ofrece menos control fino y no garantiza por sí solo consulta documental.
