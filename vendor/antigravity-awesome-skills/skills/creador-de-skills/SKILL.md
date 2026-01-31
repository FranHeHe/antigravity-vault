---
name: creador-de-skills
description: Genera nuevos skills estandarizados y estructurados para el entorno Antigravity.
---

# Creador de Skills para Antigravity

## Cuándo usar este skill
- Cuando el usuario pida: "creame un skill para X" o "Usa mi documento creador-de-skills-antigravity...".
- Cuando necesites estandarizar un proceso repetitivo en un nuevo skill.
- Cuando quieras convertir un prompt largo o una tarea compleja en algo reutilizable.

## Inputs necesarios
- **Tema del skill**: ¿Para qué sirve? (Ej: "auditar landing", "planificar video").
- **Documento base (opcional)**: Si el usuario aporta un doc con reglas, úsalo como fuente de verdad.
- **Restricciones específicas**: Si el usuario define formatos o reglas extra.

## Workflow
1. **Analizar la solicitud**: Entender el objetivo, inputs y outputs deseados. Determinar el nivel de libertad (Alta, Media, Baja).
2. **Definir estructura**: Determinar nombre (kebab-case, max 40 chars), carpetas y archivos necesarios.
3. **Redactar SKILL.md**: Escribir el frontmatter, secciones y reglas siguiendo el estándar del sistema.
4. **Validar**: Revisar contra las reglas de diseño (claridad, separación de responsabilidades, triggers).
5. **Generar Output**: Devolver la estructura de carpetas y archivos en el formato exacto estandarizado.

## Instrucciones

### 1. Estructura de Carpetas
Cada skill debe vivir en: `agent/skills/<nombre-del-skill>/`
Contenido mínimo:
- `SKILL.md` (Obligatorio: lógica y reglas)
- `recursos/` (Opcional: guías, plantillas, tokens, ejemplos)
- `scripts/` (Opcional: utilidades que el skill ejecuta)
- `ejemplos/` (Opcional: implementaciones de referencia)

### 2. Reglas del Archivo SKILL.md
- **YAML Frontmatter**:
  ```yaml
  ---
  name: nombre-del-skill  # minúsculas, guiones, max 40 chars. Ej: planificar-video
  description: Descripción breve en tercera persona, max 220 chars. Qué hace y cuándo usarlo.
  ---
  ```
  *Nota*: No usar nombres de herramientas salvo imprescindible. No usar "marketing" en tags.

- **Secciones Obligatorias**:
  - `# Título del skill`
  - `## Cuándo usar este skill` (Lista de triggers concretos)
  - `## Inputs necesarios` (Qué hace falta antes de empezar)
  - `## Workflow` (Pasos numerados, fases si es complejo)
  - `## Instrucciones` (Reglas, principios, manejo de errores)
  - `## Output (formato exacto)` (Qué se entrega al final)

### 3. Principios de Diseño
- **Claridad y Brevedad**: Manual de ejecución, no blog. Pocas reglas pero claras.
- **Separación de Responsabilidades**: Pasos -> Workflow. Estilo/Datos -> `recursos/`.
- **Niveles de Libertad**:
  - *Alta (Heurísticas)*: Brainstorming, ideas.
  - *Media (Plantillas)*: Documentos, copys.
  - *Baja (Pasos exactos)*: Scripts, operaciones técnicas.
- **Pedir Datos**: Si falta un input crítico, preguntar antes de asumir.
- **Manejo de Errores**: Incluir cómo corregir si el output falla o hay ambigüedad.
- **Idioma**: Todo el contenido (descripciones, instrucciones, comentarios) debe estar rigurosamente en ESPAÑOL.

## Output (Formato exacto)
Tu respuesta al crear el skill debe seguir este formato:

Carpeta
`agent/skills/<nombre-del-skill>/`

`SKILL.md`
```markdown
---
name: ...
description: ...
---
# <Título del skill>
## Cuándo usar este skill
- ...
## Inputs necesarios
- ...
## Workflow
1) ...
## Instrucciones
...
## Output (formato exacto)
...
```

Recursos opcionales (solo si aportan valor real):
- `recursos/<archivo>.md`
- `scripts/<archivo>.sh`
