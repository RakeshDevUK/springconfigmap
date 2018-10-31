FROM centos

EXPOSE 8080

ADD jdk-11-mimimal jdk-11-minimal
ENV JAVA_HOME /jdk-11-minimal
ENV PATH=$PATH:/jdk-11-minimal/bin

ADD target/restspring-1.0.0.jar /restspring-1.0.0.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xmx32M","-Xss256k","-jar","/restspring-1.0.0.jar"]

