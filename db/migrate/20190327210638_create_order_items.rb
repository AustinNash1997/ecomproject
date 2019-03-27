class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    drop_table :order_items
    create_table :order_items do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.string :price
      t.integer :quantity

      t.timestamps
    end
  end
end
