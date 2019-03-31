class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :price, :decimal
    change_column :orders, :tax, :decimal
    change_column :orders, :subtotal, :decimal
    change_column :orders, :total, :decimal
    change_column :order_items, :price, :decimal
  end
end
