# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :category_id
      t.string :name
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
