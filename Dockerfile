FROM jenkins
MAINTAINER mike.coleman@docker.com
 
COPY plugins.txt /usr/share/jenkins/plugins.txt
COPY mike-jenkins-ra.pem /usr/share/jenkins
RUN chmod 400 /usr/share/jenkins/mike-jenkins-ra.pem
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

