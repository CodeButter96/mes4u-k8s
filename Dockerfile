FROM openjdk:8-jre
COPY target/ROOT.war ROOT.war
ENTRYPOINT ["java", "-jar", "ROOT.war"]