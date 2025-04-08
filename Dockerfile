# 베이스 이미지
FROM python:3.9-slim

# curl 설치
RUN apt-get update && apt-get install -y curl

# 필요한 패키지 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 앱 복사
COPY app.py .

# 포트 오픈 및 실행
EXPOSE 5000
CMD ["python", "app.py"]
