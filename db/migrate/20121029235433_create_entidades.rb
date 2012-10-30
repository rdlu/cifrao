class CreateEntidades < ActiveRecord::Migration
  def change
    create_table :entidades do |t|
      t.string :cnpj_cpf
      t.string :nome

      t.timestamps
    end
  end
end
