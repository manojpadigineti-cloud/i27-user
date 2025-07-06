FROM openjdk:18
RUN mkdir /opt/application
WORKDIR /opt/application/
RUN chmod 777 /opt/application
ARG JAR_SOURCE
ARG PORT
EXPOSE ${PORT}
COPY ${JAR_SOURCE} /opt/application/
ENV JAR_FILE=${JAR_SOURCE}
ENTRYPOINT java -jar ${JAR_FILE}