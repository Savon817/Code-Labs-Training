class CLI
    def run
        Scraper.country_info
        greetings
        menu
        while menu != 'exit'

        end
    end

    def greetings
        puts "Hello! Welcome to the country information scraper"
    end

    def menu

    end
end