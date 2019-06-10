class RemovePriceFromAuctionItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :auction_items, :price, :decimal
  end
end
