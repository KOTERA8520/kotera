# 1. 파이썬 환경 설정
FROM python:3.9-slim

# 2. 작업 폴더 만들기
WORKDIR /app

# 3. 모든 파일 복사
COPY . .

# 4. 필수 라이브러리 설치
RUN pip install flask gunicorn google-cloud-aiplatform

# 5. 구글 클라우드용 포트 개방
ENV PORT 8080

# 6. 챗봇 엔진 실행 (main.py가 실행 파일이라고 가정)
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app
