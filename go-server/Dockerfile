FROM golang:1.21 AS build

#gitのインストール
RUN apt-get update && apt-get install -y git \
curl \
ca-certificates \
openssh-client \
&& rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを設定
WORKDIR /app

# コンテナ起動時に実行されるコマンド
CMD ["tail", "-f", "/dev/null"]