class AddCurrencyToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :currency, :integer, null: false, default: 0
  end
end
