class Despesa < ActiveRecord::Base
  belongs_to :conta_origem
  belongs_to :conta_destino
  attr_accessible :descricao, :valor, :conta_origem_id, :conta_destino_id

  after_create{ |despesa|
    conta = Contum.find(despesa.conta_origem_id)
    conta.saldo = conta.saldo - despesa.valor
    conta.save
  }

  before_update { |despesa|
    conta = Contum.find(despesa.conta_origem_id)
		despesa_antiga = Despesa.find(despesa.id)
		conta.saldo = conta.saldo + despesa_antiga.valor
		conta.save	
   }

   after_update { |despesa|
    conta = Contum.find(despesa.conta_origem_id)
		conta.saldo = conta.saldo - despesa.valor
		conta.save	
   }

   before_destroy { |despesa|
    conta = Contum.find(despesa.conta_origem_id)
		conta.saldo = conta.saldo + despesa.valor
		conta.save	
   }
end
