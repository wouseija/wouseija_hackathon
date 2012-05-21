class CreateLocalProjetos < ActiveRecord::Migration
  def change
    create_table :local_projetos do |t|
      t.integer :endereco_id
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
