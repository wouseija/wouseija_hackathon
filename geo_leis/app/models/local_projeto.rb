class LocalProjeto < ActiveRecord::Base
  attr_accessible :endereco_id, :codigo
  belongs_to :endereco
  belongs_to :projeto, :foreign_key => "codigo"
end
