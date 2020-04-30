class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route_name, null:false
      t.string :station, null:false
      t.integer :time, null:false 
      t.timestamps
    end
  end
end
