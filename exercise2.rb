class Cat
    def initialize(name, preferred_food, meal_time)
        @name = name
        @preferred_food = preferred_food
        @meal_time = meal_time
    end
    def eats_at
        if @meal_time > 12
            return "#{@meal_time - 12} PM"
        else
            return "#{@meal_time} AM"
        end
    end
    def meow
        return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
    end
end

sammy = Cat.new("Sammy", "dry food", 17)
charlotte = Cat.new("Charlotte", "wet food", 18)

puts sammy.meow
puts charlotte.meow