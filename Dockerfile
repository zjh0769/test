# 版本信息
FROM java

# 添加发布文件到容器目录
RUN mkdir -p /usr/eoms
ADD eomsfile /usr/eoms


# 配置eoms服务程序
# RUN ln -s /usr/eoms/eoms-0.0.1.jar /etc/init.d/eoms

# 配置eoms有执行权限
RUN chmod u+x /usr/eoms/eoms-0.0.1.jar
RUN chmod u+x /usr/eoms/start.sh

EXPOSE 8080

# 启动eoms
CMD [ "sh", "/usr/eoms/start.sh" ]