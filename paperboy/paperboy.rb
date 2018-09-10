class Paperboy
    def initialize(name)
        @name = name
        @experience = 0
        @earnings = 0
        @quota = 50
    end

    def deliver(start_house, end_house)
        @deliveries = end_house - start_house + 1
        if @deliveries < 1
            @deliveries *= -1
        end
        if @deliveries > @quota
            extra_deliveries = @deliveries - @quota
            @earnings += (@quota * 0.25) + (extra_deliveries * 0.5)
        elsif @deliveries == @quota
            @earnings += (@deliveries) * 0.25
        else
            @earnings += (@deliveries) * 0.25
            @earnings -= 2
        end
        @experience += @deliveries
        @quota += @deliveries / 2
        @earnings
    end

    def report
        puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
    end

    attr_reader :earnings
    attr_reader :quota
end