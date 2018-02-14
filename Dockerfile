#FROM ppc64le/alpine
#FROM ppc64le/openjdk
FROM java:8
MAINTAINER IBM Java engineering at IBM Cloud

COPY target/demomicrotest-1.0-SNAPSHOT.jar /app.jar

ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
