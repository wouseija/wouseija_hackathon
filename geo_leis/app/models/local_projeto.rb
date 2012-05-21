class LocalProjeto < ActiveRecord::Base
  attr_accessible :endereco_id, :projeto_id
  belongs_to :endereco
  belongs_to :projeto
end
