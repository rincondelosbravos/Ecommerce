
Este proyecto fue generado desde [Spring Initializr](https://start.spring.io/) utilizando **Spring Boot** con servidor embebido **Apache Tomcat**.  
El resultado final, una vez compilado, será un **archivo JAR ejecutable**, lo que permite desplegar la aplicación sin necesidad de configurar manualmente un servidor externo.  

---

## ⚙️ Configuración del Proyecto

- **Packaging**: `jar`  
- **Servidor embebido**: Apache Tomcat  
- **Lenguaje**: Java  
- **Versión de Java**: 17 (requerida a partir de Spring Boot 3.x)  
- **Gestor de dependencias**: Maven  

---

## 📚 Dependencias Incluidas

El proyecto incluye los siguientes *starters* y librerías:

- **Spring Web**  
  Permite exponer recursos RESTful y trabajar con el patrón **Spring MVC**. Incluye **Apache Tomcat** como servidor embebido.

- **Spring Data JPA**  
  Facilita el mapeo de clases Java (POJOs) a tablas de base de datos mediante JPA/Hibernate, y simplifica las operaciones de persistencia.

- **PostgreSQL Driver**  
  Driver de conexión necesario para que la aplicación pueda comunicarse con una base de datos PostgreSQL.

- **Spring Boot DevTools**  
  Ofrece **LiveReload** (reinicio automático del servidor y recarga de cambios en caliente), optimizando el desarrollo.

- **Lombok**  
  Reduce código repetitivo mediante anotaciones (`@Getter`, `@Setter`, `@AllArgsConstructor`, etc.), generando constructores y métodos automáticamente.

---

## 📂 Estructura Inicial del Proyecto

```plaintext
src/
 ├─ main/
 │   ├─ java/com/example/demo/
 │   │   └─ DemoApplication.java      # Clase principal
 │   └─ resources/
 │       ├─ application.properties    # Configuración de la app
 │       └─ static/                   # Archivos estáticos (css, js)
 │
 └─ test/
     └─ java/com/example/demo/        # Pruebas unitarias