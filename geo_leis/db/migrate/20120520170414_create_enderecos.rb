class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :codigo
      t.string :nome
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
