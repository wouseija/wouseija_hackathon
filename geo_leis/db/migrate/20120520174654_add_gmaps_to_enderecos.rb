class AddGmapsToEnderecos < ActiveRecord::Migration
  def change
    add_column :enderecos, :gmaps, :boolean
  end
end
