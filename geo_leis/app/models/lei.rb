class Lei < ActiveRecord::Base
  attr_accessible :ano, :bairro, :codigo, :endereco, :gmaps, :latitude, :longitude, :regiao, :titulo

  acts_as_gmappable

  def gmaps4rails_address
	endereco
  end
end
