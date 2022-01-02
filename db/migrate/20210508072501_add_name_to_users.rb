# frozen_string_literal: true

class AddNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name,   :string
    add_column :users, :age,    :integer
    add_column :users, :gender, :integer
  end
end
