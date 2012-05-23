class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :codigo
      t.text :titulo

      t.timestamps
    end
  end
end
