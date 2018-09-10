class Player
    def initialize(gold_coins = 0, health_points = 10, lives = 5)
        @gold_coins = gold_coins
        @health_points = health_points
        @lives = lives
    end
    def level_up
        @lives += 1
    end
    def collect_treasure
        @gold_coins += 1
        if @gold_coins % 10 == 0
            level_up
        end
    end
    def do_battle(damage)
        @health_points -= damage
        if @health_points < 1
            @lives -= 1
            if @lives < 1
                restart
            end
            @health_points = 10
        end
    end
    def restart
        @gold_coins = 0
        @health_points = 10
        @lives = 5
    end
end