# ベースイメージとしてNode.jsを使用
# Node.jsのバージョンは24-slimを使用
FROM node:24-slim AS build

#gitのインストール
RUN apt-get update && apt-get install -y git \
curl \
ca-certificates \
openssh-client \
&& rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを設定
WORKDIR /app

CMD ["tail", "-f", "/dev/null"]