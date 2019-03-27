class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    drop_table :orders
    create_table :orders do |t|
      t.string :subtotal
      t.string :tax
      t.string :total
      t.references :order_statud, foreign_key: true

      t.timestamps
    end
  end
end
