# 📦 Backend del Proyecto Ecommerce

Este proyecto fue generado desde [Spring Initializr](https://start.spring.io/) utilizando **Spring Boot** con servidor embebido **Apache Tomcat**.  
El resultado final, una vez compilado, será un **archivo JAR ejecutable**, lo que permite desplegar la aplicación sin necesidad de configurar manualmente un servidor externo.  

---

## ⚙️ Configuración del Proyecto

- **Group**: `com.braco96.ecommerce`  
- **Artifact**: `backend`  
- **Name**: `backend`  
- **Descripción**: Backend del proyecto Ecommerce  
- **Package name**: `com.braco96.ecommerce.backend`  
- **Packaging**: `jar`  
- **Java**: 17  
- **Spring Boot**: 3.5.5  

---

## 📚 Dependencias Incluidas

El proyecto incluye los siguientes *starters* y librerías:

- **Spring Web**  
  Construcción de aplicaciones web, incluyendo recursos RESTful, utilizando Spring MVC. Usa **Apache Tomcat** como contenedor embebido por defecto.

- **Spring Data JPA**  
  Persistencia de datos en bases de datos SQL mediante **JPA** con **Spring Data** y **Hibernate**.

- **MySQL Driver**  
  Driver JDBC necesario para que la aplicación pueda comunicarse con bases de datos **MySQL**.

- **Spring Boot DevTools**  
  Proporciona reinicios rápidos de la aplicación, **LiveReload** y configuraciones para mejorar la experiencia de desarrollo.

---

## 📂 Estructura Inicial del Proyecto

```plaintext
src/
 ├─ main/
 │   ├─ java/com/braco96/ecommerce/backend/
 │   │   └─ BackendApplication.java   # Clase principal
 │   └─ resources/
 │       ├─ application.properties    # Configuración de la app
 │       └─ static/                   # Archivos estáticos (css, js)
 │
 └─ test/
     └─ java/com/braco96/ecommerce/backend/  # Pruebas unitarias

