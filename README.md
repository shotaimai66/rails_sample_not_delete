# README
## このリポジトリをコピーして別のリポジトリを作成する方法
- https://github.com/shotaimai66/readme-develop/blob/main/%E3%83%AA%E3%83%9D%E3%82%B8%E3%83%88%E3%83%AA%E3%81%AE%E3%82%B3%E3%83%94%E3%83%BC%E6%96%B9%E6%B3%95.md

---

## 環境構築
```
# イメージのビルド
docker-compose build

# bundle intall
docker-compose run --rm app bundle install

# yarn install
docker-compose run --rm app yarn install

# db:setup
docker-compose run --rm app rails db:setup
```

---

## 開発コマンド
```
# コンテナ起動＜binding.irbを使いたい時（docker-compose upより常にこっちの方がいいかも）＞
bin/dev

# コンテナ起動
docker-compose up

# コンテナ停止
docker-compose down

# bundle install
docker-compose run --rm app bundle install

# rails db:migrate
docker-compose run --rm app rails db:migrate

# rails db:seed
docker-compose run --rm app rails db:seed
```

---

## テストコマンド(gem 'rspec')
```
# rspec(全部実行)
docker-compose run --rm app rspec

# rspec(個別実行):例 spec/models/article_spec.rbの17行目
docker-compose run --rm app rspec spec/models/article_spec.rb:17
```

---

## 構文チェックコマンド(gem 'rubocop')
```
# rubocop
docker-compose run --rm app rubocop

# rubocop(自動整形)
docker-compose run --rm app rubocop -a
```

---

## ER図の生成(gem 'erd')
```
# ER図の生成
docker-compose run --rm app erd
```

---

## その他開発用readme（こちらも必ず確認ください！！）
- https://github.com/shotaimai66/readme-develop