# A class for loading exchange rates via api service to and from a base currency.
# The class is initialized with the base currency and
# provides two methods - from and to.
class ExchangeRateStorage
  attr_accessor :currency, :exchange_rates, :api_service

  def initialize(currency)
    self.currency = currency # the base currency
    self.exchange_rates = {} # a hash for caching the rates
    self.api_service = ExchangeRateApiService.new
  end

  # Gets an exchange rate for converting from
  # the specified currency to the base currency.
  def from(cur)
    return 1 if cur == currency

    key = "#{cur.upcase}_#{currency.upcase}"

    if exchange_rates[key].nil?
      exchange_rates.merge!(api_service.exchange_rate(key))
    end

    exchange_rates[key]
  end

  # Gets an exchange rate for converting to the specified currency
  # from the base currency.
  def to(cur)
    return 1 if cur == currency

    key = "#{currency.upcase}_#{cur.upcase}"

    if exchange_rates[key].nil?
      exchange_rates.merge!(api_service.exchange_rate(key))
    end

    exchange_rates[key]
  end
end
