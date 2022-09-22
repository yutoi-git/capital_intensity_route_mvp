class CreateLines < ActiveRecord::Migration[6.1]
  def change
    create_table :lines, id: false do |t|
      t.integer :line_code, null: false, primary_key: true
      t.integer :company_code, null: false
      t.string :name, null: false

      t.timestamps
    end
    add_foreign_key :lines, :companies, column: :company_code, primary_key: :company_code
  end
end
