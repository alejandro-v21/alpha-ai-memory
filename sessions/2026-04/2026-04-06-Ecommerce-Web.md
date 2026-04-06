# Sesion 2026-04-06 - Ecommerce Web (Farmacia)

## Goal
Investigacion del carrusel de categorias en frontend AngularJS y su API C# backend.

## Accomplished
- Controller de inicio.html: inicioGruposCtrl (InicioGrupos.Controller.js)
- Endpoint GraphQL: POST https://ecommerce-api.farmaciasiman.com/producto/graphql
- Flujo completo trazado: GraphQL Query -> DataLoader -> Repository -> SQL tabla ProductosGruposImagen
- ImagenUrl almacenada como URL completa en BD, sin construccion dinamica en codigo

## Decisions Made
- Sesion de analisis puro, sin cambios de codigo

## Next Steps
- A definir por el usuario

## Relevant Files
- InicioGrupos.Controller.js - controller del carrusel
- Grupos.Service.js - ObtenerImagenesDeGrupo
- MenusGruposProductoQuery.cs - resolver GraphQL menuGrupos
- GruposProductoByEmpresaIdDataLoader.cs - batch loader
- GrupoImagenesRepository.cs - query a ProductosGruposImagen
- ProductoGrupoImagen.cs - entidad con ImagenUrl
