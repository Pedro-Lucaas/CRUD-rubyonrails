class CreateHardwares < ActiveRecord::Migration[6.1]
  def change
    create_table :hardwares, id: false do |t|
      t.string :assembly_method
      t.references :product, null: false, foreign_key: true, primary_key: true

      t.timestamps
    end
  end
end
