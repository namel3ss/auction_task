class Bid < ApplicationRecord
  include HasCurrency

  belongs_to :user
  belongs_to :auction_item

  scope :with_user, -> { includes(:user) }
  scope :by_date, -> { order(created_at: :desc) }
end
