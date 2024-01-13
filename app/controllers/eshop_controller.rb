class EshopController < ApplicationController
  def index
    @users = User.all
    @currency_rate = CurrencyRate.get_currency_rate(840)
   @translate_str =  " TEMP STRING " # TranslateText.translate("Hello World", "en-US", "uk-UA")

  end
end
