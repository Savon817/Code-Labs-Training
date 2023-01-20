require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def scrape_country
    URI.open("https://www.scrapethissite.com/pages/simple/")
    binding.pry
  end
end