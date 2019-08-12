FROM jenkinsci/blueocean:latest
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV JENKINS_USER admin
ENV JENKINS_PASS admin
COPY admin_user.groovy /usr/share/jenkins/ref/init.groovy.d/
VOLUME /var/jenkins_home