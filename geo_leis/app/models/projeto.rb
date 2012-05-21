class Projeto < ActiveRecord::Base
	attr_accessible :codigo, :titulo, :endereco_ids, :projeto_ids
	has_many :local_projetos
	has_many :enderecos, :through => :local_projetos

	has_many :vereador_projetos
	has_many :vereadores, :through => :vereador_projetos

end
