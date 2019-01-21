# 版本信息
FROM java

# 添加发布文件到容器目录
RUN mkdir -p /usr/test
ADD test /usr/test


# 配置eoms有执行权限
RUN chmod u+x /usr/test/test-0.0.1-SNAPSHOT.jar
RUN chmod u+x /usr/test/start.sh

EXPOSE 8080

# 启动eoms
CMD [ "sh", "/usr/test/start.sh" ]