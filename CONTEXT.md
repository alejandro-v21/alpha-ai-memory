# Contexto del Equipo — alpha-ai-memory

> Archivo maestro. El agente lo lee al inicio de cada sesión. Actualizado automáticamente.

## Stack Principal

- Backend: C# / .NET con Clean Architecture
- Frontend: Angular
- Cloud: Azure DevOps
- AI Setup: GitHub Copilot CLI + gentle-ai (sdd-apply, sdd-explore, etc.)

## Decisiones Globales del Equipo

- **CLI usa `~/.copilot/copilot-instructions.md`** — no `Code/User/prompts/`. Fuente: docs oficiales GitHub.
- **Memoria persistente**: alpha-ai-memory git repo reemplaza Engram (bloqueado por política corporativa).
- **Auto-commit**: event-driven en el orquestador + Scheduled Task cada 30 min como red de seguridad.
- **SDD artifacts**: `.atl\changes\{change-name}\` dentro de cada proyecto (file-based, no Engram).

## Proyectos Activos

- **gentle-ai**: Setup de configuración completo. Ver `sessions/2026-03/2026-03-31-gentle-ai-setup.md`
- **ConAgentesConSkills**: API .NET de prueba para validar agentes. Ver `sessions/2026-03/2026-03-31-ConAgentesConSkills.md`

## Últimas Sesiones

- **2026-04-17** — [farmacia-ecommerce-web] Análisis completo de la app AngularJS + creación de 7 skills de proyecto (carrito, productos, usuarios, pedidos, loyalty, shared, overview). Ver `sessions/2026-04/2026-04-17-farmacia-ecommerce-web.md`

- **2026-03-31** — [gentle-ai-setup] Diagnóstico y corrección completa de config GitHub Copilot CLI: instrucciones globales, BOM fix, auto-guardado event-driven, Scheduled Task. Ver `sessions/2026-03/2026-03-31-gentle-ai-setup.md`
- **2026-03-31** — [ConAgentesConSkills] Extensión de IOrderRepository, análisis CA, SDD list-orders, Angular signals. Ver `sessions/2026-03/2026-03-31-ConAgentesConSkills.md`

---
_Última actualización: 2026-04-17_

