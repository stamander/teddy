class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name,null: false
      t.string :kana,null: false
      t.string :phone_number,null: false
      t.string :mail,null: false
      t.string :adress_number,null:false
      t.string :adress,null:false 
      t.string :number,null:false

      t.timestamps
    end
  end
end
