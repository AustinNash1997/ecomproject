class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customer_id
      t.string :first_name
      t.string :last_name
      t.string :province_code
      t.string :email
      t.string :credit_card
      t.string :card_exp_mo
      t.string :card_exp_yr

      t.timestamps
    end
  end
end
