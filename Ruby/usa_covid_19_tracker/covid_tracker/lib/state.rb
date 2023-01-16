class State < Country
    attr_accessor :name, :confirmed_cases, :overall_deaths, :recoveries
    @@records = []

    def initialize(state_name, state_cases, state_deaths, state_recoveries)
        @name = state_name
        @confirmed_cases = state_cases
        @overall_deaths = state_deaths
        @recoveries = state_recoveries

        @@records << self
    end
    
    def self.all
        @@records
    end

end
