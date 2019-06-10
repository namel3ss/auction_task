class User < ApplicationRecord
  include HasCurrency

  has_many :bids, dependent: :destroy

  def exchange_rate_from(cur)
    @ex_rate_storage ||= ExchangeRateStorage.new(currency)
    @ex_rate_storage.from(cur)
  end

  def exchange_rate_to(cur)
    @ex_rate_storage ||= ExchangeRateStorage.new(currency)
    @ex_rate_storage.to(cur)
  end
end
