class Endereco < ActiveRecord::Base
	attr_accessible :codigo, :latitude, :longitude, :nome

	acts_as_gmappable

	def gmaps4rails_address
		nome
	end
end
