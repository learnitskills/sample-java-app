FROM openjdk:11.0.14-jre
RUN useradd -ms /bin/bash nonrootuser
USER nonrootuser
ARG JAR_FILE=build/libs/*.jar
WORKDIR /home/nonrootuser
COPY target/*.jar app.jar
ENV JAVA_OPTS=""
CMD java $JAVA_OPTS -jar app.jar