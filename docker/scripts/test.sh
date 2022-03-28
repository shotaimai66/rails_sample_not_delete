#!/bin/sh
#
# アプリケーションのテストを実行する
# @note 引数はRSpec実行時のオプションとしてデリゲートされる
#
set -e;
cd /webapp;

# 環境変数を設定
export RAILS_ENV="test";

# テストの実行
bundle exec rspec $*;
bundle exec brakeman --no-pager;
bundle exec rubocop;

# erdの生成
bundle exec erd;

# テストの終了
echo "\e[32m";
echo "\n  =========================\n";
echo "         TEST PASSED";
echo "\n  =========================\n";
echo "\e[m";
exit 0;
