class CreateVereadores < ActiveRecord::Migration
  def change
    create_table :vereadores do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  end
end
