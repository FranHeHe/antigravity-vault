# 📦 Antigravity Vault — Catálogo Maestro

Este catálogo define **qué skills existen oficialmente en el Vault**, su estado y su procedencia.

Es la **fuente de verdad** del sistema: cualquier skill no listada aquí
se considera **no canónica**, aunque exista físicamente en el Vault.

---

## Estructura del catálogo

Cada skill documenta:

- Nombre
- Categoría funcional
- Origen (core / vendor / custom)
- Estado (active / excluded / deprecated)
- Skill canónica si existe solape
- Motivo de inclusión o exclusión

---

## 🧠 CORE · Prompting & Planning

```yaml
- name: prompt-engineering
  category: core
  origin: core
  source: null
  status: active
  canonical: prompt-engineering
  overlaps_with:
    - prompt-library
  inclusion_reason: >
    Skill núcleo para diseñar prompts robustos y reproducibles. Define patrones,
    pruebas y optimización de prompts, base obligatoria antes de usar librerías
    o plantillas preexistentes.
  exclusion_reason: null

- name: planning-with-files
  category: core
  origin: vendor:OthmanAdi/planning-with-files
  source: https://github.com/OthmanAdi/planning-with-files
  status: active
  canonical: planning-with-files
  overlaps_with:
    - writing-plans
    - writing-skills
  inclusion_reason: >
    Planificación persistente estilo Manus con task_plan.md, findings.md y
    progress.md. Estándar canónico para tareas complejas y gestión de estado en
    disco.
  exclusion_reason: null

- name: writing-plans
  category: planning
  origin: vendor:anthropic/skills
  source: null
  status: active
  canonical: writing-plans
  overlaps_with:
    - planning-with-files
  inclusion_reason: >
    Guía para redactar planes de implementación detallados y accionables antes
    de tocar código, con rutas de archivos, pruebas y pasos de ejecución.
  exclusion_reason: null

- name: writing-skills
  category: meta-docs
  origin: vendor:anthropic/skills
  source: null
  status: active
  canonical: writing-skills
  overlaps_with:
    - writing-plans
  inclusion_reason: >
    Aplica TDD a la creación de skills: presión inicial, skill mínima y
    refactor para cerrar racionalizaciones. Establece estándares de redacción
    y pruebas para cualquier nueva skill.
  exclusion_reason: null

- name: prompt-library
  category: prompting
  origin: vendor:community/awesome-prompts
  source: null
  status: active
  canonical: prompt-engineering
  overlaps_with:
    - prompt-engineering
  inclusion_reason: >
    Biblioteca curada de prompts listos para usar. Complementa la ingeniería de
    prompts con ejemplos prácticos y plantillas por rol y tarea.
  exclusion_reason: null
```

## 🎨 UI / UX · Diseño & Frontend

```yaml
- name: ui-ux-pro-max
  category: ui-ux
  origin: vendor:nextlevelbuilder/ui-ux-pro-max-skill
  source: https://github.com/nextlevelbuilder/ui-ux-pro-max-skill
  status: active
  canonical: ui-ux-pro-max
  overlaps_with:
    - ui-ux-designer
    - web-design-guidelines
    - tailwind-patterns
    - tailwind-design-system
  inclusion_reason: >
    Criterio de diseño integral con bases de datos de estilos, paletas y
    tipografías más guías de accesibilidad y performance. Referencia canónica
    para decisiones y auditorías UI/UX.
  exclusion_reason: null

- name: ui-ux-designer
  category: ui-ux
  origin: vendor:anthropic/skills
  source: null
  status: active
  canonical: ui-ux-pro-max
  overlaps_with:
    - ui-ux-pro-max
    - tailwind-design-system
  inclusion_reason: >
    Skill de diseño centrado en sistemas, accesibilidad y research. Útil para
    handoff y arquitectura de componentes, pero se alinea bajo la guía canónica
    ui-ux-pro-max.
  exclusion_reason: null

- name: web-design-guidelines
  category: ui-ux
  origin: vendor:vercel-labs/web-interface-guidelines
  source: https://github.com/vercel-labs/web-interface-guidelines
  status: active
  canonical: web-design-guidelines
  overlaps_with:
    - ui-ux-pro-max
  inclusion_reason: >
    Auditoría automatizada contra la guía oficial de Web Interface Guidelines
    de Vercel. Proporciona checklist normativo y formato de hallazgos
    reproducible.
  exclusion_reason: null

- name: tailwind-patterns
  category: ui-ux
  origin: vendor:antigravity-vault
  source: null
  status: active
  canonical: tailwind-patterns
  overlaps_with:
    - tailwind-design-system
    - ui-ux-pro-max
  inclusion_reason: >
    Patrones modernos de Tailwind CSS v4 (CSS-first, container queries, tokens)
    para componer interfaces eficientes y accesibles.
  exclusion_reason: null

- name: tailwind-design-system
  category: ui-ux
  origin: vendor:antigravity-vault
  source: null
  status: active
  canonical: tailwind-design-system
  overlaps_with:
    - tailwind-patterns
    - ui-ux-designer
  inclusion_reason: >
    Metodología para construir sistemas de diseño con Tailwind: tokens,
    variantes, patrones responsivos y accesibilidad.
  exclusion_reason: null

- name: brand-guidelines
  category: ui-ux
  origin: vendor:anthropics/skills
  source: https://github.com/anthropics/skills
  status: active
  canonical: brand-guidelines
  overlaps_with:
    - ui-ux-pro-max
  inclusion_reason: >
    Guía oficial de identidad de marca Anthropic (colores, tipografía y
    aplicación). Aporta consistencia visual y tonal a cualquier entregable.
  exclusion_reason: null
```

## 🔍 SEO · Estrategia & Contenido

```yaml
- name: programmatic-seo
  category: seo
  origin: vendor:nguyenphp/antigravity-marketing
  source: https://github.com/nguyenphp/antigravity-marketing
  status: active
  canonical: programmatic-seo
  overlaps_with:
    - seo-content-planner
    - seo-content-writer
    - schema-markup
  inclusion_reason: >
    Estrategia canónica para SEO programático a escala: viabilidad, diseño de
    plantillas y prevención de doorway/thin content.
  exclusion_reason: null

- name: seo-content-planner
  category: seo
  origin: vendor:nguyenphp/antigravity-marketing
  source: null
  status: active
  canonical: seo-content-planner
  overlaps_with:
    - programmatic-seo
    - seo-content-writer
  inclusion_reason: >
    Planificación de clústeres y calendarios SEO, identificación de gaps y
    estructura de outlines completos alineados a intención de búsqueda.
  exclusion_reason: null

- name: seo-content-writer
  category: seo
  origin: vendor:nguyenphp/antigravity-marketing
  source: null
  status: active
  canonical: seo-content-writer
  overlaps_with:
    - seo-content-planner
    - programmatic-seo
  inclusion_reason: >
    Redacción SEO optimizada con E-E-A-T, integración semántica y paquetes de
    entrega (títulos, meta, enlaces internos).
  exclusion_reason: null

- name: seo-audit
  category: seo
  origin: vendor:antigravity-vault
  source: null
  status: active
  canonical: seo-audit
  overlaps_with:
    - schema-markup
  inclusion_reason: >
    Marco exhaustivo de auditoría SEO técnica y on-page priorizada. Define
    puerta de alcance, checklist y severidad de hallazgos.
  exclusion_reason: null

- name: schema-markup
  category: seo
  origin: vendor:antigravity-vault
  source: null
  status: active
  canonical: schema-markup
  overlaps_with:
    - seo-audit
    - programmatic-seo
  inclusion_reason: >
    Diseño y validación de datos estructurados con índice de elegibilidad e
    impacto. Previene over-markup y riesgos de políticas.
  exclusion_reason: null
```

## 🛠️ Debugging, QA & Automatización

```yaml
- name: systematic-debugging
  category: debugging
  origin: vendor:antigravity-vault
  source: null
  status: active
  canonical: systematic-debugging
  overlaps_with:
    - debugging-toolkit-smart-debug
  inclusion_reason: >
    Proceso disciplinado de depuración por fases con énfasis en causa raíz y
    trazabilidad antes de cualquier fix.
  exclusion_reason: null

- name: debugging-toolkit-smart-debug
  category: debugging
  origin: vendor:antigravity-vault
  source: null
  status: active
  canonical: systematic-debugging
  overlaps_with:
    - systematic-debugging
  inclusion_reason: >
    Toolkit avanzado para triage asistido por IA, observabilidad y generación
    de hipótesis priorizadas. Complementa el flujo canónico de depuración.
  exclusion_reason: null

- name: code-review-checklist
  category: quality
  origin: vendor:antigravity-vault
  source: null
  status: active
  canonical: code-review-checklist
  overlaps_with: []
  inclusion_reason: >
    Checklist estructurado para revisiones de código cubriendo funcionalidad,
    seguridad, rendimiento, pruebas y mantenibilidad.
  exclusion_reason: null

- name: playwright-skill
  category: testing
  origin: vendor:lackeyjb/playwright-skill
  source: null
  status: active
  canonical: playwright-skill
  overlaps_with: []
  inclusion_reason: >
    Automatización de navegador con Playwright, detección de dev servers y
    ejecución aislada en /tmp para pruebas end-to-end y flujos críticos.
  exclusion_reason: null
```

## 🚀 Delivery & DevOps

```yaml
- name: vercel-deployment
  category: devops
  origin: vendor:vibeship-spawner-skills
  source: null
  status: active
  canonical: vercel-deployment
  overlaps_with: []
  inclusion_reason: >
    Guía completa y experta para desplegar en Vercel con Next.js: elección edge/serverless,
    variables por entorno, optimización de build y prevención de anti-patrones.
  exclusion_reason: null
```
