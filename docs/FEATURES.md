# 📋 Funcionalidades del Sistema de Gestión de Libros

Este documento describe las funcionalidades planificadas, en desarrollo y completadas para la aplicación.

---

## ✅ Funcionalidades del Sistema
### Backend (Express + MySQL)
- [x] API REST básica con Express
- [x] Conexión a base de datos MySQL
- [ ] CRUD de géneros
- [ ] CRUD de libros
- [ ] Validaciones y middlewares en Express
- [ ] Autenticación básica (JWT)
- [ ] Paginación en lista de libros
- [ ] Gestión de usuarios y roles (admin, lector)
- [ ] Endpoint de búsqueda avanzada (por título, autor, género)


### Frontend (React)
- [ ] Estructura inicial de la app con Vite + React
- [ ] Lista de libros desde la API
- [ ] Formulario para registrar libros
- [ ] Visualización de géneros
- [ ] Formulario para registrar autores
- [ ] Filtro de libros por género
- [ ] Manejo de errores y validaciones en formularios
- [ ] Panel de administración
- [ ] Búsqueda de libros en tiempo real
- [ ] Sistema de notificaciones


### Base de Datos
- [x] Script `schema.sql` con estructura de tablas
- [x] Script `seed.sql` con datos iniciales (géneros y autores)


### General
- [ ] Dockerizar backend + base de datos
- [ ] Deploy automático (CI/CD)
- [ ] Documentación con Swagger/OpenAPI

---

## 🗂️ Próximas versiones
- **v0.2.0** → Autenticación + gestión de usuarios  
- **v0.3.0** → Reportes y exportación de datos  
- **v1.0.0** → Release estable con frontend completo y base de datos en producción  
