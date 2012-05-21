class AddBairroToEnderecos < ActiveRecord::Migration
  def change
    add_column :enderecos, :bairro, :string
  end
end
