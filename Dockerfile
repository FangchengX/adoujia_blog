FROM adoptopenjdk/openjdk11-openj9:alpine-slim
COPY target/questionnaire-web-0.0.1-SNAPSHOT.jar /home
WORKDIR /home
ENV SPRING_PROFILES_ACTIVE dev
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
CMD ["java" ,"-Xmx3000m","-server", "-Dlog4j.configurationFile=classpath:log4j2.yaml",  "-jar", "blog-0.0.1-SNAPSHOT.jar"]