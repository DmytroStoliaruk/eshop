class EshopController < ApplicationController
  # just example now to use working services
  def index
    @currency_rate = CurrencyRate.get_currency_rate(840)
    @translate_str =  TranslateText.translate("Hello World", "en-US", "uk-UA")
    @product_data = ProductData.get_products_data ("https://detail.1688.com/offer/727123127589.html")
  end
end
