# 使用官方 Python 运行时作为父镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 将当前目录内容复制到容器中的 /app
COPY . /app

# 安装项目依赖
RUN pip install --no-cache-dir -r requirements.txt

# 让端口 5000 可以从容器外部访问
EXPOSE 5000

# 定义环境变量
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0

# 运行应用
CMD ["flask", "run"]
