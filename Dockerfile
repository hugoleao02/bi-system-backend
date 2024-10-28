# Usar a imagem do OpenJDK
FROM openjdk:11-jdk-slim

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o JAR gerado pelo Maven para a imagem Docker
COPY target/bi-system-backend-0.0.1-SNAPSHOT.jar app.jar

# Comando para executar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
