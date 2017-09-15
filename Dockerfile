FROM maven:3.5-jdk-8-alpine 
MAINTAINER xiaoyun(xiaoyun-sutdio@foxmail.com)
COPY . /tmp/xiaoyun-core-env/
COPY doc/settings.xml /root/.m2/
WORKDIR /tmp/xiaoyun-core-env/
# 打包jar，下载jar
RUN mvn package -DskipTests
# 删除临时目录
RUN rm -rf /tmp/xiaoyun-core-env


