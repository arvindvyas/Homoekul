class CreateVouchers < ActiveRecord::Migration[7.1]
  def change
    create_table :vouchers do |t|
      t.string :code
      t.decimal :discount_amount
      t.date :expiry_date

      t.timestamps
    end
  end
end
