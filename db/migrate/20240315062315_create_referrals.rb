class CreateReferrals < ActiveRecord::Migration[7.1]
  def change
    create_table :referrals do |t|
      t.integer :referrer_id
      t.integer :referred_id
      t.string :code

      t.timestamps
    end
  end
end
