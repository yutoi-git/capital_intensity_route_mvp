class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations, id: false do |t|
      t.integer :station_code, null: false, unique: true, primary_key: true
      t.integer :company_code, null: false
      t.string :name, null: false
      t.float :longitude, null: false
      t.float :latitude, null: false

      t.timestamps
    end
    add_foreign_key :stations, :companies, column: :company_code , primary_key: :company_code
  end
end
