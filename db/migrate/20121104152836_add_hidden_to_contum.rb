class AddHiddenToContum < ActiveRecord::Migration
  def change
    add_column :conta, :descricao, :string
  end
end
