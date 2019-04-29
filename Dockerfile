FROM registry.access.redhat.com/openshift3/jenkins-agent-maven-35-rhel7
#FROM docker.io/openshift/jenkins-agent-maven-35-centos7:v3.11

USER root 

RUN yum-config-manager --enable extras
RUN yum makecache fast
RUN yum -y install docker

USER 1001