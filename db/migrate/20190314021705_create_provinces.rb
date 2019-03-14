class CreateProvinces < ActiveRecord::Migration[5.2]
  def change
    create_table :provinces do |t|
      t.string :province_id
      t.string :province_name
      t.string :province_code

      t.timestamps
    end
  end
end
