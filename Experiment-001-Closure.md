# Experiment 001 Closure

## Hipótesis

Si se utiliza una Project Rule mínima de Cursor para recordar el contexto base del CEO, entonces el operador podrá iniciar un chat nuevo con una instrucción reducida como:

```
Eres el CEO de Corbenn Labs...
```

Y el agente debería operar bajo la arquitectura de Corbenn Labs sin que el operador adjunte manualmente todos los documentos base.

---

## Implementación Realizada

Se creó una Project Rule en:

`.cursor/rules/ceo-invocation.mdc`

La rule tenía sintaxis YAML válida.

El experimento se ejecutó abriendo un chat nuevo e invocando al CEO con una instrucción mínima:

```
Eres el CEO de Corbenn Labs...
```

---

## Resultado Obtenido

El comportamiento esperado no ocurrió.

El agente respondió usando conocimiento general y no operó bajo el contexto documental de Corbenn Labs.

---

## Evidencia Observada

- La Project Rule existía en `.cursor/rules/ceo-invocation.mdc`.
- El archivo tenía sintaxis YAML válida.
- Se abrió un chat nuevo.
- El operador escribió: `Eres el CEO de Corbenn Labs...`
- El agente respondió sin consultar documentos del repositorio.
- El propio agente confirmó que no había consultado documentos del repo.
- La respuesta no demostró haber cargado `SYSTEM_BOOT.md`, `MasterContext_v2.md`, `PROJECT_STATE.md` ni el contrato documental del CEO.

---

## Conclusión

El Experimento 001 no validó la hipótesis.

La existencia de una Project Rule válida no fue suficiente para garantizar que Cursor la aplicara al abrir un chat nuevo con una invocación mínima del CEO.

La causa más probable, según documentación oficial de Cursor, es que la rule no fue incluida en el contexto del chat. La activación de una Project Rule depende de su configuración, como `alwaysApply`, `globs`, `description`, relevancia semántica o mención manual.

Además, incluso cuando una rule se activa, esto no garantiza por sí solo que el agente consulte documentos del repositorio, salvo que esos documentos sean incluidos o referenciados correctamente en el contexto.

---

## Lecciones Aprendidas

- Una Project Rule con YAML válido no garantiza aplicación automática.
- La activación de rules en Cursor depende de condiciones específicas.
- Un chat nuevo no necesariamente incluye contexto del repositorio.
- La instrucción mínima por sí sola no obliga al agente a consultar documentos.
- Las Project Rules pueden orientar comportamiento, pero no deben asumirse como mecanismo garantizado de lectura documental.
- Corbenn Labs necesita validar cualquier mejora de invocación con evidencia observada, no solo con estructura de archivos correcta.

---

## Estado

Cerrado.

Resultado:

Hipótesis no validada.
