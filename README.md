# alpha-ai-memory — ARCHIVADO

> ⚠️ **Este repo está archivado desde 2026-04-18**. La memoria persistente del equipo se migró a **Engram via MCP**.
>
> - Binario: `C:\Users\areyes\AppData\Local\engram\bin\engram.exe`
> - DB: `C:\Users\areyes\.engram\engram.db`
> - MCP activo en Copilot CLI (`~/.copilot/mcp-config.json`) y VSCode (`%APPDATA%\Code\User\mcp.json`)
>
> Todo el contenido de este repo fue importado a Engram. Queda aquí **solo como backup histórico read-only**. No escribir más acá.
>
> Para buscar memoria: usá `engram search "<query>"` o las tools MCP (`mem_search`, `mem_context`, `mem_get_observation`) desde el agente.

---

## Contenido histórico original

# alpha-ai-memory

Memoria persistente compartida del equipo para agentes de IA (GitHub Copilot CLI + gentle-ai).

## Cómo funciona

El agente de IA lee este repositorio al inicio de cada sesión y escribe resúmenes al cerrarse.
Los archivos son generados automáticamente — revisá con `git diff` antes de commitear.

## Estructura

| Path | Contenido |
|------|-----------|
| `CONTEXT.md` | Resumen maestro — lo primero que lee el agente |
| `decisions/` | Decisiones arquitectónicas y técnicas del equipo |
| `projects/{nombre}/` | Contexto específico por proyecto |
| `sessions/{YYYY-MM}/` | Resúmenes de sesiones de trabajo |
| `team/` | Convenciones y preferencias del equipo |

## Para nuevos integrantes

1. Cloná este repo: `git clone https://github.com/alejandro-v21/alpha-ai-memory C:\Users\{tuUsuario}\alpha-ai-memory`
2. El agente carga el contexto automáticamente en cada sesión
3. No editás estos archivos manualmente — el agente los mantiene

## Actualizar la memoria

Al final de cada sesión el agente actualiza los archivos. Revisá los cambios:
```bash
cd C:\Users\{tuUsuario}\alpha-ai-memory
git diff
git add .
git commit -m "memory: session {fecha} — {tema}"
git push
```

