# Use uma imagem base do Java
FROM openjdk:8-jdk-alpine

# Copie o arquivo .jar para o contêiner
COPY ./target/seu-app.jar /usr/app/

# Mude o diretório de trabalho
WORKDIR /usr/app


# Inicie o aplicativo Spring Boot
ENTRYPOINT ["java", "-jar", "seu-app.jar"]
