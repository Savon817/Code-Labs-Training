class CLI
    def run
        Scraper.country_info
        greetings
        menu
        while menu != 'exit'

        end
        end_program
    end

    def greetings
        puts "Hello! Welcome to the country information scraper"
    end

    def end_program
        puts "See you later!"
    end

    def menu
        puts "---------------------------------------"
        menu_options
        puts "Please select an option!"
        input = gets.chomp
        pick_options(input)
        return input
    end

    def menu_options
        puts "1. Choose a country to view it's information"
        puts "2. See Top 10 most populated countries"
        puts "3. Play Population Guessing game!!!"
        puts "4. Play Capital Guessing game!!!"
    end

    def pick_options(input)
        case input
        when "1"
            puts "Pick a country of your choosing? (Ex. France)"
            user_pick = gets.chomp
            puts "------Alrighty let's get #{user_pick}'s info------"
            countries = Country.all
            country = countries.select do |select_country|
                select_country.name == user_pick
            end
            sleep(2)
            puts "Here's #{user_pick}'s info!!! \nCountry Capital: #{country[0].capital} \nCountry population: #{country[0].population} \nCountry Size: #{country[0].area} km^2"
        when "2"
            sleep(3)
            countries = Country.all.sort_by{|country| -country.population}
            countries[0..9].each_with_index do |country, i|
                puts "#{i + 1}. #{country.name} has a population of #{country.population} people"
            end
        when "3"
            puts "Guess a random country's population"
            i = 0
            user_guess = nil
            countries = Country.all
            rand_country = countries.sample
            puts "Type stop to cancel the game"
            while user_guess != 'stop' && i < 1 do
                puts "Try to guess #{rand_country.name}'s population:"
                user_guess = gets.chomp 
                if user_guess.to_i == rand_country.population
                    puts "WHAT!!! How? No Way, are you a wizard! You got the right answer!"
                elsif user_guess.to_i.between?(rand_country.population-50000, rand_country.population+50000)
                    puts "Close but I'll allow it! Good Guess! Your answer was #{user_guess} and the real population is #{rand_country.population}"
                else
                    puts "Sorry wrong answer!"
                end
                i += 1
            end
        when "4"
            puts "Guess the country from this random capital"
            user_cap = nil
            countries = Country.all
            rand_capital = countries.sample
            puts "Type stop to cancel the game"
            i = 0
            while user_cap != 'stop' && i < 1 do
                puts "What country does this capital (#{rand_capital.capital}) belong to: "
                user_cap = gets.chomp
                if user_cap == rand_capital.name
                    puts "Correct!"
                else
                    puts "Sorry, that was incorrect :("
                end
                i += 1
            end
        end
    end
end
