require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative "countries.rb"

class Scraper

  def self.scrape_country
    puts "Scraping for country data..."
    doc = Nokogiri::HTML(URI.open("https://www.scrapethissite.com/pages/simple/"))
    countries = doc.css(".country")
    countries.each do |single_country|
      name =  single_country.css(".country-name").text.split(" ").join(" ")
      capital = single_country.css(".country-capital").text
      population = single_country.css(".country-population").text.to_i
      area = single_country.css(".country-area").text.to_f
      
      Country.new(name, capital, population, area)
    end
  end

  def self.country_info
    scrape_country
  end
end