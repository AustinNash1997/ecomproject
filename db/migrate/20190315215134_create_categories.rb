class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :category_id
      t.String :name
      t.name :description
      t.string :image

      t.timestamps
    end
  end
end
