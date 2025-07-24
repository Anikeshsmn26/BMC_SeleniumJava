FROM maven:3.9.4-eclipse-temurin-17-alpine

WORKDIR /app

COPY . .

RUN mvn clean install

CMD ["mvn", "test", "-DsuiteXmlFile=testng.xml"]
