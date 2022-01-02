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

### gem更新時
```
docker-compose run app bundle install
```

### heroku dploy

- heroku login

- heroku container:push web

- heroku container:release web

- heroku stack:set container

- heroku run rails db:migrate

- heroku open
