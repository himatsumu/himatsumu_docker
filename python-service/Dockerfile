FROM python:3.12-slim AS build

#gitのインストール
RUN apt-get update && apt-get install -y git \
curl \
ca-certificates \
openssh-client \
&& rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを設定
WORKDIR /app

# Pythonの依存関係をインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["tail", "-f", "/dev/null"]