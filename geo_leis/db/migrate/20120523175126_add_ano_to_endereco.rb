class AddAnoToEndereco < ActiveRecord::Migration
  def change
    add_column :enderecos, :ano, :integer
  end
end
