FROM jenkins/jenkins:jdk17

USER root

RUN apt-get update

USER jenkins

COPY . /var/jenkins_home/workspace/seu-projeto

EXPOSE 8081

CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
