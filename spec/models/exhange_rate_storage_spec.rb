require 'rails_helper'

RSpec.describe ExchangeRateStorage, type: :model do
  before(:each) do
    ExchangeRateApiService.any_instance
                          .stub(:exchange_rate)
                          .and_return({ 'USD_EUR' => 1.5 })
  end

  context 'when asking for rate from' do
    it 'returns 1 when using one and the same currency' do
      cur1 = 'EUR'
      cur2 = 'EUR'

      storage = ExchangeRateStorage.new(cur1)
      rate = storage.from(cur2)

      expect(rate).to eq(1)
    end

    it 'returns rate when using different currencies' do
      cur1 = 'EUR'
      cur2 = 'USD'

      storage = ExchangeRateStorage.new(cur1)
      rate = storage.from(cur2)

      expect(rate).to eq(1.5)
    end

    it 'caches the rate inside an isntance variable' do
      cur1 = 'EUR'
      cur2 = 'USD'

      storage = ExchangeRateStorage.new(cur1)
      rate = storage.from(cur2)

      expect(rate).to eq(1.5)
      expect(storage.exchange_rates.size).to eq(1)
      expect(storage.exchange_rates['USD_EUR']).to eq(1.5)
    end
  end

  context 'when asking for rate to' do
    it 'returns 1 when using one and the same currency' do
      cur1 = 'EUR'
      cur2 = 'EUR'

      storage = ExchangeRateStorage.new(cur1)
      rate = storage.to(cur2)

      expect(rate).to eq(1)
    end

    it 'returns rate when using different currencies' do
      cur1 = 'USD'
      cur2 = 'EUR'

      storage = ExchangeRateStorage.new(cur1)
      rate = storage.to(cur2)

      expect(rate).to eq(1.5)
    end

    it 'caches the rate inside an isntance variable' do
      cur1 = 'USD'
      cur2 = 'EUR'

      storage = ExchangeRateStorage.new(cur1)
      rate = storage.to(cur2)

      expect(rate).to eq(1.5)
      expect(storage.exchange_rates.size).to eq(1)
      expect(storage.exchange_rates['USD_EUR']).to eq(1.5)
    end
  end
end
