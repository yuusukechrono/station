class RenameStationColumnToStations < ActiveRecord::Migration[5.2]
  def change
    rename_column :stations, :station, :station_name
  end
end
