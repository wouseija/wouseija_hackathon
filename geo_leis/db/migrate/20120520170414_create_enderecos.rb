class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :codigo
      t.string :nome
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :bairro

      t.timestamps
    end
  end
end
