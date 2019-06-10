class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.float :price, null: false, default: 0
      t.integer :currency, null: false, default: 0
      t.references :user, null: false, index: true
      t.references :auction_item, null: false, index: true

      t.timestamps
    end
  end
end
