class Contum < ActiveRecord::Base
  belongs_to :entidades
  attr_accessible :agencia, :nro_conta, :saldo, :entidades_id
  validates_presence_of :agencia, :nro_conta, :saldo, :entidades_id
end
