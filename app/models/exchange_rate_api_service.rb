require 'net/http'

class ExchangeRateApiService
  ENDPOINT = 'https://free.currconv.com/api/v7/convert'

  def exchange_rate(key)
    params = {
      q: key,
      compact: 'ultra',
      apiKey: Rails.application.credentials.currency_api_key
    }

    uri = URI.parse(ENDPOINT)
    uri.query = URI.encode_www_form(params)

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    response = http.request(Net::HTTP::Get.new(uri.request_uri))

    body = JSON.parse(response.body)

    body
  end
end
