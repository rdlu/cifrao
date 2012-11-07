class CreateDespesas < ActiveRecord::Migration
  def change
    create_table :despesas do |t|
      t.float :valor
      t.string :descricao
      t.references :conta_origem
      t.references :conta_destino

      t.timestamps
    end
    add_index :despesas, :conta_origem_id
    add_index :despesas, :conta_destino_id
  end
end
