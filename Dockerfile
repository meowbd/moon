FROM openjdk:21-jdk

WORKDIR /
ENV TZ Asia/Shanghai

# 请修改 jar_name 为真实的jar 包名称
ADD ./target/moon-0.1.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

# 本地 build 然后 打tag
# docker build -t moon:0.1 .
# docker tag moon:0.1 meowbd/moon:0.1

# 本地 build 的同时直接 打tag
# docker build -t meowbd/moon:0.1 .

# 本地运行容器
# docker run -d -p 8090:8080  meowbd/moon:0.1

# 推送到镜像仓库
# docker push meowbd/moon:0.1