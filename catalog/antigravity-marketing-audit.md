# Antigravity Marketing Kit — Auditoría de Inclusión en Vault

## Identificación
- **Vendor:** nguyenphp
- **Repositorio:** antigravity-marketing
- **Versión auditada:** v1.0.11
- **Tipo:** Kit completo (skills + agents + workflows)
- **Estado:** En evaluación

---

## Descripción resumida
Antigravity Marketing Kit es un paquete amplio de skills orientadas a marketing, growth, CRO, contenido y analítica. Incluye agentes especializados y workflows predefinidos.

El enfoque es **productividad marketing all-in-one**, no especialización profunda por dominio.

---

## Análisis según Reglas Oficiales de Exclusión

### 1. Solapamiento funcional
❌ **Alto**

Solapa directamente con skills ya presentes en el Vault en las áreas de:
- SEO (audit, content, programmatic)
- UX / CRO
- Planning / workflows
- Prompting estructurado

---

### 2. Nivel de especialización
❌ **Generalista**

La mayoría de skills son:
- Amplias
- Orientadas a marketing genérico
- Menos profundas que las skills curatoriales ya existentes en el Vault

---

### 3. Atomicidad
❌ **Baja**

Muchas skills mezclan:
- Estrategia
- Ejecución
- Copy
- Diagnóstico

Esto rompe el principio de **skills pequeñas, composables y predecibles**.

---

### 4. Calidad diferencial
⚠️ **Parcial**

Puntos fuertes:
- Buen empaquetado
- Documentación cuidada
- Casos interesantes (Remotion, workflows)

Limitaciones:
- No supera claramente a las skills curatoriales existentes
- Añade volumen más que precisión

---

### 5. Gobernanza y control
❌ **Débil para el Vault**

El kit está diseñado para:
- Instalación directa en proyectos
- Uso “plug & play”

No está pensado para:
- Curaduría estricta
- Override consciente
- Convivencia con un Vault gobernado

---

### 6. Coste cognitivo
❌ **Alto**

41+ skills nuevas implican:
- Mayor ambigüedad en selección
- Riesgo de invocaciones no deseadas
- Dificultad para mantener consistencia de razonamiento

---

## Decisión

### ❌ NO INCLUIR EL KIT COMPLETO EN EL VAULT

**Motivo principal:**  
Solapamiento + generalismo + aumento de entropía.

---

## Excepciones candidatas (a evaluar individualmente)

Estas piezas podrían considerarse **solo si se extraen y se reescriben**:

- Conceptos de `video-automation` (Remotion)
- Algunos workflows como referencia conceptual
- Estructura de documentación (no el contenido)

⚠️ **Nunca como importación directa.**

---

## Recomendación Final

- Mantener Antigravity Marketing Kit como:
  - **Referencia externa**
  - **Fuente de ideas**
- NO como dependencia del Vault
- El Vault prioriza:
  - Precisión
  - No solapamiento
  - Control total

---

**Estado final:** ❌ Excluido por diseño
