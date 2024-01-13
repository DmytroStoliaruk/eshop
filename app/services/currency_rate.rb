require 'net/http'
require 'json'

class CurrencyRate
  CURRENCY_RATE_URL = "https://api.monobank.ua/bank/currency"

  def self.get_currency_rate(currency_code)
    response = Net::HTTP.get_response(URI(CURRENCY_RATE_URL))
    if response.is_a?(Net::HTTPSuccess)
      currency_data = JSON.parse(response.body)
      rate_data = currency_data.find { |item| item["currencyCodeA"] == currency_code }
      rate_data ? rate_data["rateSell"] : nil
    else
      "Error: #{response.code}"
    end
  end

  def sell_rate
    @@rate_data["rateSell"]
  end  
end
