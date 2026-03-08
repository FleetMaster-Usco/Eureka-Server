# Paso 1: Usar una imagen de Java ligera
FROM eclipse-temurin:17-jdk-alpine

# Paso 2: Crear un directorio para la app
WORKDIR /app

# Paso 3: Copiar el archivo JAR (asegúrate de haber hecho 'mvn clean package' antes)
COPY target/*.jar app.jar

# Paso 4: Exponer el puerto que configuramos en el yaml
EXPOSE 8761

# Paso 5: Comando para arrancar
ENTRYPOINT ["java", "-jar", "app.jar"]