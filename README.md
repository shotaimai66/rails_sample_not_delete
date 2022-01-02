# README
### 環境構築
```
# イメージのビルド
docker-compose build

# bundle intall
docker-compose run app bundle install

# yarn install
docker-compose run app yarn install

# db:setup
docker-compose run app rails db:setup
```

### 開発コマンド
```
# コンテナ起動
docker-compose up

# コンテナ停止
docker-compose down

# bundle install
docker-compose run app bundle install

# rails db:migrate
docker-compose run app rails db:migrate

# rails db:seed
docker-compose run app rails db:seed
```

### テストコマンド
```
# rspec(全部実行)
docker-compose run app rspec

# rspec(個別実行):例 spec/models/article_spec.rbの17行目
docker-compose run app rspec spec/models/article_spec.rb:17
```

### 構文チェックコマンド
```
# rubocop
docker-compose run app rubocop

# rubocop(自動整形)
docker-compose run app rubocop -a
```

### その他コマンド
```
# ER図の生成(gem 'erd')
docker-compose run app erd
```

### リポジトリコピー方法
- https://necessary-chiller-0fb.notion.site/d899d9a8c80c4221a21ffdc570e5ed2b

### リモートブランチのプロテクト方法
- https://www.youtube.com/watch?v=ClHZOta_cgE

### heroku dploy
- herokuへのデプロイ参考資料
  - https://necessary-chiller-0fb.notion.site/heroku-docker-3b210a618ca04e01a1a9543c18e6b24a