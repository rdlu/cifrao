class Entidade < ActiveRecord::Base
  attr_accessible :cnpj_cpf, :nome
  has_many :contums, foreign_key: "entidades_id", :dependent => :destroy
  validates_presence_of :nome
    validates_length_of :nome, :minimum => 3
end
