---
name: translate-skill-to-spanish
description: Use when the user asks to translate a skill, documentation, or any text from English to Spanish.
---

# Translate Skill to Spanish

## Overview

This skill guides the agent in translating technical documentation and skills from English to Spanish. The critical requirement is to **preserve all technical content** (code, commands, paths, variable names) exactly as they are, translating only the explanatory text.

## When to Use

- When the user explicitly asks to "translate" (traducir) a skill or file to Spanish.
- When generating Spanish documentation based on English sources.
- When converting existing guides to Spanish.

## Translation Rules

### ✅ What to Translate (English -> Spanish)
- **Headings**: Titles, subtitles (e.g., `# Overview` -> `# Visión General`).
- **Body Text**: Paragraphs, explanations, descriptions.
- **Lists**: Bullet points and numbered lists (the informational content).
- **Comments (Selective)**: Only translate comments if they are explanatory sentences. If they are code annotations (like `// turbo`), keep them as is or use judgment. *In general, for skills, prefer keeping code comments in English unless they are block descriptions.*

### ❌ What NOT to Translate (Keep as Original)
- **Code Blocks**: Content inside triple backticks (\`\`\` ... \`\`\`).
- **Inline Code**: Content inside single backticks (\`...\`).
- **File Paths**: e.g., `skills/writing-skills/SKILL.md`.
- **Directory Names**: e.g., `.gemini/`, `src/`.
- **Variable Names**: e.g., `TaskName`, `ArtifactType`.
- **Tool Names**: e.g., `run_command`, `view_file`.
- **YAML Frontmatter Keys**: `name`, `description`. (The *values* of `description` CAN be translated).
- **Proper Nouns / Technical Terms**: "React", "Next.js", "Antigravity", "Subagent", "TDD" (unless there is a standard Spanish equivalent being used in context, but usually keep English technical terms).

## Process

1.  **Analyze the Source**: innovative Identify the sections of text vs. code.
2.  **Translate**:
    -   Read paragraph by paragraph.
    -   Translate the meaning to natural, professional Spanish.
    -   **Stop** at every code span or block and copy it verbatim.
3.  **Output**: Write the translated content to the target file or display it.

## Examples

### Example 1: Basic Paragraph

**Original (English):**
> Use the `task_boundary` tool to indicate the start of a task. This should roughly correspond to the top-level items in your task.md.

**Translated (Spanish):**
> Usa la herramienta `task_boundary` para indicar el inicio de una tarea. Esto debería corresponder aproximadamente a los ítems de nivel superior en tu task.md.

### Example 2: Code Block

**Original (English):**
> To avoid repeating the same values, you should use the special string "%SAME%".
> ```json
> {
>   "TaskName": "%SAME%"
> }
> ```

**Translated (Spanish):**
> Para evitar repetir los mismos valores, debes usar la cadena especial "%SAME%".
> ```json
> {
>   "TaskName": "%SAME%"
> }
> ```

### Example 3: Mixed List

**Original (English):**
> - **Red Phase**: Write a failing test.
> - **Green Phase**: Write minimal code to pass.
> - Run `npm test` to verify.

**Translated (Spanish):**
> - **Fase Roja**: Escribe una prueba que falle.
> - **Fase Verde**: Escribe el código mínimo para pasar.
> - Ejecuta `npm test` para verificar.

## Common Mistakes

- **Translating keywords**: DO NOT translate `task_boundary` to "limite_de_tarea".
- **Translating paths**: DO NOT translate `skills/` to `habilidades/`.
- **Translating inside code**: DO NOT translate string literals inside code blocks unless they are user-facing strings and the instruction specifically implies localization (usually for skills, keep code strict).
