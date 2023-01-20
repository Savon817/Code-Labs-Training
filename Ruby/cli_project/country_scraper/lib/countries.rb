class Country
    attr_accessor :name, :capital, :population, :area
    @@list = []
  
    def initialize(country_name, country_capital, country_population, country_size)
      @name = country_name
      @capital = country_capital
      @population = country_population
      @area = country_size
  
      @@list << self
    end
  
    def self.all
      @@list
    end
  end
  