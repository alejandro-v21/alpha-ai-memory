## AcademiaIntegrationTests — Proyecto documentado — 2026-04-09

**What:** Proyecto educativo de integración tests en .NET 8 con CustomWebApplicationFactory, EF Core InMemory, NSubstitute y xUnit.
**Why:** Proyecto de Academia para aprender integration testing en ASP.NET Core.
**Where:** C:\Users\areyes\Desktop\AcademiaIntegrationTests\ — DOCUMENTATION.md creado.
**Learned:** CustomWebApplicationFactory reemplaza SQLite por InMemory y registra IStorageService como NSubstitute Singleton para poder reconfigurarlo por test. RemoveDbContext debe eliminar también DbContextOptions para evitar conflictos en DI.
