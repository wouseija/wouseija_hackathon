class CreateLocalProjetos < ActiveRecord::Migration
  def change
    create_table :local_projetos do |t|
      t.integer :projeto_id
      t.integer :endereco_id

      t.timestamps
    end
  end
end
