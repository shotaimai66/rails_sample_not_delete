# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |i|
  user = User.new(
    email: "test_user#{i}@gmail.com", # sample: test_user1@gmail.com
    name: "テストuser#{i}",
    password: 'password'
  )

  user.skip_confirmation! # deviseの確認メールをスキップ
  user.save!
end

manager = Manager.new(
  email: 'test_manager@gmail.com',
  name: 'テストmanager1',
  password: 'password'
)

manager.skip_confirmation! # deviseの確認メールをスキップ
manager.save!

admin = Admin.new(
  email: 'test_admin@gmail.com',
  name: 'テストadmin1',
  password: 'password'
)

admin.skip_confirmation! # deviseの確認メールをスキップ
admin.save!
