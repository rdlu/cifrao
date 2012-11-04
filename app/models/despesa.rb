class Despesa < ActiveRecord::Base
  belongs_to :conta_origem
  belongs_to :conta_destino
  attr_accessible :descricao, :valor, :conta_origem_id, :conta_destino_id
end
