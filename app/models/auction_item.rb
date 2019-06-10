class AuctionItem < ApplicationRecord
  include HasCurrency

  has_many :bids, dependent: :destroy
end
