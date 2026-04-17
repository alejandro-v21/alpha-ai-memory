# Sesión 2026-04-17 — farmacia-ecommerce-web

## Goal
Análisis completo de la app Farmacia Siman Ecommerce (AngularJS 1.x) para crear skills de proyecto que mapeen cada feature a sus archivos, controllers, services, endpoints y flujos.

## Accomplished
- Exploración exhaustiva de toda la app (8 exploradores en paralelo)
- Creación de 7 skills de proyecto:
  - farmasiman-app-overview (arquitectura general, módulos, config, multi-país)
  - farmasiman-carrito-checkout (carrito, checkout, 6 métodos de pago, 3DS)
  - farmasiman-productos-catalogo (búsqueda facetada, detalle, grupos GraphQL, sets)
  - farmasiman-usuarios-auth (Cognito login, perfil, tarjetas, RTN, documentos)
  - farmasiman-pedidos-tracking (pedidos, checkout, tracking SignalR, SAD)
  - farmasiman-loyalty-cupones-puntos (cupones, 3 sistemas de puntos, promos, recargas)
  - farmasiman-shared-services (18 services, 16+ directivas, Global utilities)
- Skills instalados en ambos niveles: proyecto (.copilot\skills\) y global
- SKILL-REGISTRY.md actualizado con tabla de resolución para features de Farmacia
- Contexto del proyecto persistido en alpha-ai-memory

## Decisions Made
- Skills de proyecto se mantienen en AMBOS lugares: carpeta del proyecto + global copilot
- Cada skill mapea: archivos, controllers, services, API endpoints, modelos de datos y flujos

## Next Steps
- Usar las skills cuando se hagan cambios en el proyecto (el agente sabrá dónde buscar)
- Considerar agregar skills adicionales si se descubren features no documentados

## Relevant Files
- C:\Users\areyes\.copilot\skills\farmasiman-*\SKILL.md — 7 skills globales
- C:\Users\areyes\TFS\Farmacia\Desarrollo\Ecommerce\Apps\Web\app\.copilot\skills\farmasiman-*\SKILL.md — 7 skills a nivel proyecto
- C:\Users\areyes\.copilot\skills\SKILL-REGISTRY.md — registry actualizado
- C:\Users\areyes\alpha-ai-memory\projects\farmacia-ecommerce-web\context.md — contexto del proyecto
