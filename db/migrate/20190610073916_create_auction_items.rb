class CreateAuctionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :auction_items do |t|
      t.string :name, null: false, default: ""
      t.text :description
      t.decimal :price, precision: 15, scale: 2, null: false, default: 0

      t.timestamps
    end
  end
end
