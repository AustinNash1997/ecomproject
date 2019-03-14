class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_id
      t.string :customer_id
      t.string :order_date
      t.string :paid

      t.timestamps
    end
  end
end
