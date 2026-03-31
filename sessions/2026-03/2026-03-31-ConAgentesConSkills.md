# Sesión 2026-03-31 — ConAgentesConSkills

## Goal
Trabajamos sobre el proyecto ConAgentesConSkills (.NET Web API + Angular). Tareas: extensión del repositorio de órdenes, análisis de arquitectura, inicio del flujo SDD para el feature GET /api/orders, y creación de un componente Angular con signals.

## Accomplished
- Cambiado `PurchaseOrder.Id` de `int` a `Guid` + `PurchaseOrderResponse.Id` actualizado
- Agregado `GetByIdAsync(Guid id)` a `IOrderRepository` con implementación stub
- Creado `Services/OrderRepository.cs` stub (sealed, ambos métodos)
- Análisis completo de Clean Architecture: 9 issues identificados (4 alta, 4 media, 1 baja)
- SDD `list-orders` iniciado: fases explore, spec y design completadas
- Creado `UserListComponent` Angular (standalone, OnPush, signals, zoneless, control flow moderno)

## Decisions Made
- `PurchaseOrder.Id`: `int` → `Guid` (decisión del usuario)
- `list-orders` - CreatedAt: `DateTime` UTC en `PurchaseOrder`
- `list-orders` - Query params con `GetOrdersQuery` record init-properties (compatibilidad `[FromQuery]`)
- `list-orders` - Persistencia in-memory: `List<PurchaseOrder>` en `OrderRepository` Singleton
- `list-orders` - `OrderRepository` Singleton, `OrderService` Transient (evita captive dependency)
- `list-orders` - Validación `dateFrom > dateTo` en controller (guard clause, no negocio)
- `list-orders` - `CreatedAt` asignado en `OrderService.RegisterAsync` (no en repo)
- Angular - `UserListComponent`: `computed()` para filteredUsers, `DestroyRef` para cleanup del effect

## Next Steps
- SDD `list-orders`: ejecutar fases tasks → apply → verify → archive
- Resolver los 9 issues de Clean Architecture (crítico: Program.cs no registra ninguna dependencia)
- Crear stubs/implementaciones para `IEmailService`, `IPaymentService`, `ITransactionRepository`
- Agregar `builder.Services.AddOrderServices()` en `Program.cs` manualmente (fuera del scope del agente)

## Relevant Files
- `Entities/PurchaseOrder.cs` — Id cambiado a Guid, pendiente CreatedAt
- `DTOs/PurchaseOrderResponse.cs` — Id cambiado a Guid, pendiente CreatedAt
- `Interfaces/IOrderRepository.cs` — GetByIdAsync agregado
- `Services/OrderRepository.cs` — NUEVO stub sealed
- `.atl/changes/list-orders/explore.md` — análisis completo del feature
- `.atl/changes/list-orders/spec.md` — requisitos RFC 2119 + escenarios Given/When/Then
- `.atl/changes/list-orders/design.md` — decisiones arquitectónicas + firmas exactas
- `ClientApp/src/app/user-list/user-list.component.ts` — NUEVO componente Angular
- `ClientApp/src/app/user-list/user-list.component.html` — template con control flow moderno
- `ClientApp/src/app/user-list/user-list.component.css` — estilos
- `ClientApp/src/app/user-list/user.model.ts` — interface User
