require 'nokogiri'
require 'open-uri'
require 'pry'
require 'json'

class Scraper
    
    def self.scrape_movies(year)
        doc = Nokogiri::HTML(URI.open("https://www.scrapethissite.com/pages/ajax-javascript/?ajax=true&year=#{year}"))
        # binding.pry
        movies_list = JSON.parse(doc.text)

        movies_list.each do |movie|
            puts movie["title"]
        end
    end
end

Scraper.scrape_movies(2014)