class CreateSoftwares < ActiveRecord::Migration[6.1]
  def change
    create_table :softwares, id: false do |t|
      t.string :version
      t.string :language
      t.string :category
      t.references :product, null: false, foreign_key: true, primary_key: true
      
      t.timestamps
    end
  end
end
