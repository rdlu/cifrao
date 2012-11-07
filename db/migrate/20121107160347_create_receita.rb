class CreateReceita < ActiveRecord::Migration
  def change
    create_table :receita do |t|
      t.float :valor
      t.string :descricao
      t.references :conta_origem_receita
      t.references :conta_destino_receita

      t.timestamps
    end
    add_index :receita, :conta_origem_receita_id
    add_index :receita, :conta_destino_receita_id
  end
end
