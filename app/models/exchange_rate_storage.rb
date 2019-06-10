class ExchangeRateStorage
  attr_accessor :currency, :exchange_rates, :api_service

  def initialize(currency)
    self.currency = currency
    self.exchange_rates = {}
    self.api_service = ExchangeRateApiService.new
  end

  def from(cur)
    return 1 if cur == currency

    key = "#{cur.upcase}_#{currency.upcase}"

    if exchange_rates[key].nil?
      exchange_rates.merge!(api_service.exchange_rate(key))
    end

    exchange_rates[key]
  end

  def to(cur)
    return 1 if cur == currency

    key = "#{currency.upcase}_#{cur.upcase}"

    if exchange_rates[key].nil?
      exchange_rates.merge!(api_service.exchange_rate(key))
    end

    exchange_rates[key]
  end
end
