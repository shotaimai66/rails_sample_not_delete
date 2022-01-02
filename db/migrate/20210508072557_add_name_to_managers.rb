# frozen_string_literal: true

class AddNameToManagers < ActiveRecord::Migration[6.1]
  def change
    add_column :managers, :name, :string
  end
end
