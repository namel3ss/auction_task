class User < ApplicationRecord
  extend Enumerize

  enumerize :currency, in: { eur: 0, gbp: 1, usd: 2, sek: 3 }

  def exchange_rate_from(cur)
    @ex_rate_storage ||= ExchangeRateStorage.new(currency)
    @ex_rate_storage.from(cur)
  end
end
