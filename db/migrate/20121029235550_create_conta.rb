class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.string :agencia
      t.string :nro_conta
      t.float :saldo
      t.references :entidades

      t.timestamps
    end
    add_index :conta, :entidades_id
  end
end
