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

# rspec(全部実行)
docker-compose run app rspec

# rspec(個別実行):例 spec/models/article_spec.rbの17行目
docker-compose run app rspec spec/models/article_spec.rb:17
```

### heroku dploy

- heroku login

- heroku container:push web

- heroku container:release web

- heroku stack:set container

- heroku run rails db:migrate

- heroku open
