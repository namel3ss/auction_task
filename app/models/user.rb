class User < ApplicationRecord
  include HasCurrency

  has_many :bids, dependent: :destroy
end
