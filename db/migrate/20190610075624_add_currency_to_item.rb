class AddCurrencyToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :auction_items, :currency, :integer, null: false, default: 0
  end
end
