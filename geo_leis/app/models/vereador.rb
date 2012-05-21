class Vereador < ActiveRecord::Base
  	attr_accessible :codigo, :nome
  	has_many :vereador_projetos
	has_many :projetos, :through => :vereador_projetos
end
