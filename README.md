# ひまつむ - Docker環境

フルスタック Web アプリケーションの開発環境です。React フロントエンド、Go バックエンド、PostgreSQL データベースを管理しています。

## 🚀 使用方法

### 環境の起動
```bash
docker compose up -d --build
```

### アクセス先
- **React App**: http://localhost:3000
- **Go Server**: http://localhost:8888
- **PostgreSQL**: localhost:5432
- **Python Service**: http://localhost:5555

## ⚙️ 設定ファイル

### docker-compose.yml
3つのサービスを定義：
- `react-app`: Node.js ベースの React 開発環境
- `go-server`: Go 開発環境
- `postgres-db`: PostgreSQL データベース
- `python-service`: AI開発環境

## 💡 開発について
### 初期構築
- コンテナをアタッチする
- `/app`のパスを指定する
- `git clone ~url~.git .`コマンドを使用してクローンしてくる

## postgre-sqlの使用方法
Shellをアタッチ後に以下のコマンドを入力
```bash
psql -U himatsumu -d himatsumu
```