class Receitum < ActiveRecord::Base
  belongs_to :conta_origem_receita
  belongs_to :conta_destino_receita
    attr_accessible :descricao, :valor, :conta_origem_receita_id, :conta_destino_receita_id

after_create{ |receita|
    conta = Contum.find(receita.conta_destino_receita_id)
    conta.saldo = conta.saldo + receita.valor
    conta.save
  }

  before_update { |receita|
    conta = Contum.find(receita.conta_destino_receita_id)
		receita_antiga = Receitum.find(receita.id)
		conta.saldo = conta.saldo - receita_antiga.valor
		conta.save	
   }

   after_update { |receita|
    conta = Contum.find(receita.conta_destino_receita_id)
		conta.saldo = conta.saldo + receita.valor
		conta.save	
   }

   before_destroy { |receita|
    conta = Contum.find(receita.conta_destino_receita_id)
		conta.saldo = conta.saldo - receita.valor
		conta.save	
   }
end
