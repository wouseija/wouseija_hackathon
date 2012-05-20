class CreateVereadorProjetos < ActiveRecord::Migration
  def change
    create_table :vereador_projetos do |t|
      t.integer :vereador_id
      t.integer :projeto_id

      t.timestamps
    end
  end
end
