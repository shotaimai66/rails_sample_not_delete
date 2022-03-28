# README
## 🌟リポジトリの所有者が行うこと
1. このリポジトリをコピーして別のリポジトリを作成する方法
   1.  https://github.com/shotaimai66/readme-develop/blob/main/%E3%83%AA%E3%83%9D%E3%82%B8%E3%83%88%E3%83%AA%E3%81%AE%E3%82%B3%E3%83%94%E3%83%BC%E6%96%B9%E6%B3%95.md
2. mainブランチの保護設定とレビュー必須設定方法
   1. https://github.com/shotaimai66/readme-develop/blob/main/%E3%83%96%E3%83%A9%E3%83%B3%E3%83%81%E3%81%AE%E4%BF%9D%E8%AD%B7%E8%A8%AD%E5%AE%9A%E3%81%A8%E3%83%AC%E3%83%93%E3%83%A5%E3%83%BC%E5%BF%85%E9%A0%88%E8%A8%AD%E5%AE%9A.md
3. 開発メンバーのリポジトリへの招待
   1. 開発メンバーをリポジトリにコラボレーターとして招待する。招待の仕方についてはググってください。
4. 開発メンバーに以降のreadmeを参考に環境構築をしてもらう
5. mainブランチから作業ブランチを切ってもらい開発を進める。

---

## 🌟招待されたメンバーが行うこと
1. リポジトリのgit cloneでローカルにソースをクローンする
2. 以降の記事を参考に環境構築を行う。
3. mainブランチから作業ブランチを切って開発を進める。

---

## 環境構築
1. まずはdockerの導入
    - https://github.com/shotaimai66/readme-develop/blob/main/Docker%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB.md
2. dockerの導入ができたら、以下のコマンドを打ち込んでいく。(アプリのディレクトリ内にcdコマンドで移動してから)

```ruby
# イメージのビルド
docker-compose build

# bundle intall
docker-compose run --rm app bundle install

# yarn install
docker-compose run --rm app yarn install

# db:setup
docker-compose run --rm app rails db:setup

# railsサーバー起動(ローカルPC用)
bin/dev

# railsサーバー起動(cloud9の方)
bin/dev 8080
```

---

## 開発コマンド
```ruby
# コンテナ起動＜binding.irbを使いたい時（docker-compose upより常にこっちの方がいいかも）＞
bin/dev

# railsサーバー起動(cloud9の方)
bin/dev 8080

# コンテナ起動
docker-compose up

# コンテナ停止
docker-compose down

# appコンテナ内でコマンド実行(`docker-compose run --rm app`と同義)
bin/docker/bundle/exec

# bundle install
bin/docker/bundle/exec bundle install

# rails db:migrate
bin/docker/bundle/exec rails db:migrate

# rails db:seed
bin/docker/bundle/exec rails db:seed
```

---

## ※※※※※※※PR上げる前に確認してください※※※※※※※
- rspecと構文チェックとERDの生成
  - rspecが通っているか？
  - rubocopの構文チェックでエラーが出ていないか？
  - brakemanの脆弱性診断でエラーが出ていないか？
  - ERDの更新はされているか？

以上を以下のコマンドで確認できます。

```
bin/test
```
bin/testで全てのチェックに合格すると以下のように表示されます。チェックに合格しない場合は自分で解決するか、メンバーに相談しながら解決してください。チェックに全て合格してPRを初めて上げることができます。
```
  =========================

         TEST PASSED

  =========================
```

---

## テストコマンド(gem 'rspec')
```ruby
# rspec(全部実行)
bin/docker/bundle/exec rspec

# rspec(個別実行):例 spec/models/article_spec.rbの17行目
bin/docker/bundle/exec rspec spec/models/article_spec.rb:17
```

---

## 構文チェックコマンド(gem 'rubocop')
```ruby
# rubocop
bin/docker/bundle/exec rubocop

# rubocop(自動整形)
bin/docker/bundle/exec rubocop -a
```

---

## 脆弱性チェックコマンド(gem 'brakeman')
```ruby
# brakeman
bin/docker/bundle/exec brakeman --no-pager
```

---

## ER図の生成(gem 'erd')
```ruby
# ER図の生成
bin/docker/bundle/exec erd
```

---

## dockerがおかしくなった時やdockerのリソースを一回リセットするとき
```ruby
# 現在のディレクトリのdocker-composeコマンドで作成したイメージやコンテナ、ボリューム、ネットワークを削除するコマンド
docker-compose down --rmi local -v
```

---
## cssとjsファイルの適応について
- webpackerを使用しているので、jsとcssファイルの場所がapp/assets配下ではなく、app/javascript配下にあります。app/javascriptの中にサンプルのcssとjsがあるのでそちらを参考に実装してみてください。

## rspecについて
- ./specディレクトリ内にサンプルのテストファイル(model_spec,request_spec,system_specがあるのでそれを参考に、テストを書いてください。一つのタスクに１個でもいいのでググりながら、テストを書くように頑張ってみましょう！)

## herokuデプロイ方法
- https://github.com/shotaimai66/readme-develop/blob/main/rails7/rails7-heroku-deploy.md

## その他開発用readme（こちらも必ず確認ください！！）
- https://github.com/shotaimai66/readme-develop