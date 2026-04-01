# Contexto — ERP-Web

## Feature: stock-realtime — 2026-04-01

**What:** SignalR real-time stock updates en ProductosIntrinsecoComponent.
**Why:** Dos pestañas podían ver stock stale al facturar el mismo producto.
**Where:** 6 archivos en 3 proyectos (RealTime WebApi, Facturación WebApi, Angular ERP-Web).

### Archivos modificados
- `Farmacia.ERP.RealTime.WebApi/.../ErpWebFacturacion/HubFacturacion.cs` — método `BroadcastStockActualizado`
- `Farsiman.ERP.Facturacion.WebApi/.../RealTime/Interfaces/ISignalRClient.cs` — contrato `BroadcastStockActualizadoAsync`
- `Farsiman.ERP.Facturacion.WebApi/.../RealTime/SignalRClient.cs` — implementación
- `Farsiman.ERP.Facturacion.WebApi/.../Facturacion/FacturacionAppService.cs` — fire-and-forget post-factura
- `ERP-Web/src/app/modules/SignalR/services/signal-r.service.ts` — EventEmitter + listener
- `ERP-Web/src/app/modules/Productos/Componentes/productos-intrinseco/productos-intrinseco.component.ts` — subscribe + reload

### Arquitectura del equipo (RealTime)
- `Farmacia.ERP.RealTime.WebApi` es el servidor SignalR dedicado
- Hubs existentes: HubFacturacion, HubSAD, HubAseguradora, HubClientesErp, HubConexion, HubNotificacionERP, UpdateErpHub
- Patrón: Hub recibe invocación de backend → `Clients.All.SendAsync` a todos los Angular clients
- Facturación usa `ISignalRClient._connectionService.Connection.InvokeAsync("HubMethod", params)`
- Angular usa `hubConnection.on("Event", handler)` y EventEmitter para propagar a componentes
- `SignalRService` está provisto globalmente en `app.module.ts`

### Notas importantes
- El SDD artifacts están en `.atl\changes\stock-realtime\` dentro del repo ERP-Web
- El `ProductosIntrinsecoComponent` tiene issues conocidos: effect() async, UntypedFormGroup, console.logs en producción
