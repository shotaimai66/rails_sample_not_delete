# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    association :user

    title { 'railsエンジニアのブログ記事' }
    sub_title { 'railsエンジニアのためのブログ記事を書きました！' }
    content { 'MyText' }
  end
end
