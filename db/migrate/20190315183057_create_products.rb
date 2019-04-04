class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_id
      t.integer :category_id
      t.string :name
      t.string :description
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
