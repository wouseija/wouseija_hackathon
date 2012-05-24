class CreateBairros < ActiveRecord::Migration
  def change
    create_table :bairros do |t|
      t.string :nome
      t.integer :region_id

      t.timestamps
    end
  end
end
