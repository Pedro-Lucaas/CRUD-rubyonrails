class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :district
      t.string :complement
      t.string :cep
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
