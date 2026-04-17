# Proyecto: Farmacia Siman Ecommerce Web

## Stack
- **Framework**: AngularJS 1.x (NO Angular moderno)
- **Build**: Gulp 3.9 + Babel + SASS + Bower
- **Auth**: AWS Cognito
- **Realtime**: SignalR (tracking)
- **Charts**: ZingChart (análisis clínicos)
- **Notificaciones**: OneSignal (push), Toastr + SweetAlert (UI)

## Path del Proyecto
`C:\Users\areyes\TFS\Farmacia\Desarrollo\Ecommerce\Apps\Web\app\`

## Módulo Principal
- `appRefactor` → deps: globalModule, creditos, usuarios.perfil, usuarios.autenticacion, pedidos, promociones
- Custom interpolation: `{$ $}` (NO `{{ }}`)
- Multi-país: Honduras, Guatemala, Nicaragua

## Skills de Proyecto Creados (2026-04-17)
| Skill | Cubre |
|-------|-------|
| farmasiman-app-overview | Arquitectura general, módulos, config, multi-país, enums |
| farmasiman-carrito-checkout | Carrito, checkout, pagos (3DS, Apple Pay, PagoClick, PowerTranz) |
| farmasiman-productos-catalogo | Productos, búsqueda facetada, detalle, grupos (GraphQL), sets |
| farmasiman-usuarios-auth | Login (Cognito), perfil, tarjetas crédito, RTN, documentos |
| farmasiman-pedidos-tracking | Pedidos, checkout, tracking (SignalR), SAD, facturación |
| farmasiman-loyalty-cupones-puntos | Cupones digitales, puntos (Regular/BAC/Siman), promos, recargas, créditos, seguros, análisis clínicos |
| farmasiman-shared-services | 18+ services compartidos, 16+ directivas, componentes, Global utilities |

## Notas Clave
- Controllers muy grandes (Carrito.Controller.js = 77KB, Productos.Detalle = 46KB)
- GraphQL solo para Grupos/Categorías de productos
- 3 sistemas de puntos: Regular, BAC, Siman
- Checkout soporta guest checkout (PedidoSinUsuario)
- Recetas médicas con validación por IA (endpoint de IA)
- Envío internacional con seguro opcional
