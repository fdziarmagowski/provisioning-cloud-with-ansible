FROM jenkins/jenkins:lts-alpine

RUN /usr/local/bin/install-plugins.sh credentials-binding docker-workflow git matrix-auth workflow-aggregator packer

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false -Dhudson.footerURL=http://jenkins.wtf

ENV JENKINS_USER admin
ENV JENKINS_PASS admin

COPY --chown=1000:1000 security.groovy /usr/share/jenkins/ref/init.groovy.d/init.groovy.override
