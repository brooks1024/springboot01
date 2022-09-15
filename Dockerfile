FROM harbor.dev.rdev.tech/ccp-rail-base/jre:1.8
VOLUME /tmp
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ADD ./target/*.jar app.jar
ADD ./src/main/resources/application.yml /conf/
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar","--spring.config.location=/conf/application.yml"]
