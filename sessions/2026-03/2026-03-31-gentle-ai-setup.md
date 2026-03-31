# Sesión 2026-03-31 — gentle-ai (setup)

## Goal
Auditar y corregir toda la configuración de GitHub Copilot CLI basada en el repo Gentleman-Programming/gentle-ai, adaptada sin Engram MCP (bloqueado por política corporativa).

## Accomplished
- Diagnosticado que `Code/User/prompts/*.instructions.md` es exclusivo de VS Code Chat — la CLI NO lo lee
- Creado `~/.copilot/copilot-instructions.md` (path correcto para la CLI) con persona Gentleman + protocolo de memoria
- Eliminado el bloque SDD con refs de Engram del `copilot-instructions.md` (conflicto con agentes ya migrados)
- Removido BOM (UTF-8 `\uFEFF`) de `gentle-ai.instructions.md` y `team-memory.instructions.md`
- Validado arranque: `1 custom instruction, 1 MCP server, 8 skills, 11 agents` ✅
- Todos los agentes SDD verificados sin referencias a Engram (6/6 limpios)
- Actualizado `dev-orchestrator.agent.md` con Protocolo de Auto-Guardado continuo (event-driven, sin necesidad de decir "finalizar")
- Agregada excepción git para `alpha-ai-memory` en las reglas del orquestador
- Creado script `auto-commit-memory.ps1` + Windows Scheduled Task (cada 30 min) como red de seguridad

## Decisions Made
- CLI path correcto para instrucciones globales: `~/.copilot/copilot-instructions.md` (no `Code/User/prompts/`)
- Fuente oficial: docs.github.com/es/copilot/how-tos/copilot-cli/customize-copilot/add-custom-instructions
- Memoria persistente: alpha-ai-memory git repo (reemplaza Engram bloqueado), auto-commit event-driven + scheduled task
- El bloque `<!-- gentle-ai:sdd-orchestrator -->` (Engram-based) se mantiene en `Code/User/prompts/gentle-ai.instructions.md` solo para VS Code Chat; removido de `copilot-instructions.md`

## Next Steps
- Crear `.github/copilot-instructions.md` en cada proyecto nuevo con contexto específico (stack, convenciones)
- Testear el flujo SDD completo (todas las 8 fases + archive) en un proyecto real
- Validar que el auto-commit de alpha-ai-memory se dispara correctamente en eventos de sesión

## Relevant Files
- `C:\Users\areyes\.copilot\copilot-instructions.md` — instrucciones globales de la CLI (creado)
- `C:\Users\areyes\.copilot\agents\dev-orchestrator.agent.md` — Protocolo Auto-Guardado + excepción git (actualizado)
- `C:\Users\areyes\AppData\Roaming\Code\User\prompts\gentle-ai.instructions.md` — BOM removido
- `C:\Users\areyes\AppData\Roaming\Code\User\prompts\team-memory.instructions.md` — BOM removido
- `C:\Users\areyes\alpha-ai-memory\auto-commit-memory.ps1` — script de red de seguridad (creado)