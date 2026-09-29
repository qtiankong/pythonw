FROM python

WORKDIR /app

# 安装依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目文件
COPY . .

# Flask 默认端口
EXPOSE 5000

# 让 Flask 对外提供服务
CMD ["python", "app.py"]
