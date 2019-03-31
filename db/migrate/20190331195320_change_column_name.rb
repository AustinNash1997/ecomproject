class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :order_statud_id, :order_status_id
  end
end
