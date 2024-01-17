require 'nokogiri'
require 'open-uri'

# this code does'nt work because of capture
class ProductData
  def self.get_products_data(url_str)
    doc = Nokogiri::HTML(URI.open(url_str))
    titles = doc.css(".title-future-div").text.strip
  end
end

