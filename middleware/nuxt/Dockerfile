FROM centos:centos7.9.2009
RUN curl -sL https://rpm.nodesource.com/setup_16.x | bash -
RUN yum -y install nodejs
RUN npm install -g yarn

WORKDIR /app
EXPOSE 3000
