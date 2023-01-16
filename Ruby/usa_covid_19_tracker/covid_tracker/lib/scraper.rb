require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative "printable.rb"
require_relative "country.rb"
require_relative "state.rb"

class Scraper
    extend Printable::Format
    SCRAPE_URL = "https://www.worldometers.info/coronavirus/country/us"


    def self.scrape_usa
        usa_confirmed_cases = text_to_integer(doc.css(".maincounter-number")[0].text)
        usa_overall_deaths = text_to_integer(doc.css(".maincounter-number")[1].text)
        usa_recoveries = text_to_integer(doc.css(".maincounter-number")[2].text)

        Country.new("USA", usa_confirmed_cases, usa_overall_deaths, usa_recoveries)
        binding.pry
    end

    def self.scrape_states
        puts "Which US state do you want data for?"
        input = gets.chomp
        doc = Nokogiri::HTML( URI.open("https://www.worldometers.info/coronavirus/usa/#{input.downcase}/"))
        state_confirmed_cases = text_to_integer(doc.css(".maincounter-number")[0].text)
        state_overall_deaths = text_to_integer(doc.css(".maincounter-number")[1].text)
        state_recoveries = text_to_integer(doc.css(".maincounter-number")[2].text)

        State.new("#{input}", state_confirmed_cases, state_overall_deaths, state_recoveries)
        binding.pry
    end
end

binding.pry