# ベースイメージの指定
FROM python:3.11-slim

# 作業ディレクトリの作成
WORKDIR /app

# 依存関係ファイルのコピー
COPY requirements.txt .

# 依存関係のインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのソースコードをコピー
COPY . .

# ポートの公開
EXPOSE 8000

# サーバーの起動コマンド
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]