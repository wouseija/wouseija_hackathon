class CreateVereadors < ActiveRecord::Migration
  def change
    create_table :vereadors do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  end
end
