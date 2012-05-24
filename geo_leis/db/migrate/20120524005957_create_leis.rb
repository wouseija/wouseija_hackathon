class CreateLeis < ActiveRecord::Migration
  def change
    create_table :leis do |t|
      t.string :codigo
      t.text :titulo
      t.string :endereco
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :bairro
      t.integer :ano
      t.string :regiao

      t.timestamps
    end
  end
end
