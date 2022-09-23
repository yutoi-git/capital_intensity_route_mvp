class AddColumnToStation < ActiveRecord::Migration[6.1]
  def change
    add_column :stations, :lower_six, :float
    add_column :stations, :upper_six, :float
  end
end
