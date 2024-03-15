class CreatePopups < ActiveRecord::Migration[7.1]
  def change
    create_table :popups do |t|
      t.text :content

      t.timestamps
    end
  end
end
