class Endereco < ActiveRecord::Base
	attr_accessible :codigo, :latitude, :longitude, :nome, :codigo_ids, :endereco_ids
	acts_as_gmappable

	has_many :local_projetos
	has_many :projetos, :through => :local_projetos

	def gmaps4rails_address
		nome
	end

end
