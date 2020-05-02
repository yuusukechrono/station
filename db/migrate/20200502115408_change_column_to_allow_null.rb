class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def change
    change_column :stations, :route_name, :string, null: true
    change_column :stations, :station, :string, null: true
    change_column :stations, :time, :integer, null: true
  end
end