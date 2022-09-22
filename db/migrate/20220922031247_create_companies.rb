class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies, id: false do |t|
      t.integer :company_code, null: false, primary_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
