# frozen_string_literal: true

class RemoveCategoriesIdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :categories_id
  end
end
