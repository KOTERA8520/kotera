import os
from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route("/", methods=["POST", "GET"])
def hello_world():
    # 이 코드는 서버가 살아있는지 확인하고, 홈페이지와 연결해주는 최소한의 심장입니다.
    return "AI 기업R&D지도사 서버가 정상 작동 중입니다!", 200

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))
