class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :cnpj
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
