class CreateLinesStations < ActiveRecord::Migration[6.1]
  def change
    create_table :lines_stations do |t|
      t.integer :line_code, null: false
      t.integer :station_code, null: false
      t.integer :order, null: false

      t.timestamps
    end
    add_foreign_key :lines_stations, :lines, column: :line_code , primary_key: :line_code
    add_foreign_key :lines_stations, :stations, column: :station_code , primary_key: :station_code
    add_index :lines_stations, [:line_code, :station_code], unique: true
  end
end
