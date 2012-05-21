class VereadorProjeto < ActiveRecord::Base
  belongs_to :vereador
  belongs_to :projeto
end
