# frozen_string_literal: true

class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.float :price
      t.string :name
      t.text :description
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
