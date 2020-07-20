class CreateShoppings < ActiveRecord::Migration[5.2]
  def change
    create_table :shoppings do |t|


      t.string :name
      t.integer :price
      t.string :explain
      t.integer :number



      t.timestamps
    end
  end
end
