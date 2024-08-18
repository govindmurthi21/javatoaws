FROM openjdk:18
ADD build/libs/govind-1.0-SNAPSHOT.jar govind-eks.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "govind-eks.jar"]