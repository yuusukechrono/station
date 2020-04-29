class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name, null:false
      t.integer :rent, null:false
      t.string :address, null:false
      t.integer :age
      t.text :memo
      t.timestamps
    end
  end
end
