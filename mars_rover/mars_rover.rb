class Rover
    def initialize(x = 1, y = 1, direction = "N")
        @x = x
        @y = y
        @direction = direction
    end

    def read_instruction
        print "Current co-ordinates are #{@x} #{@y} #{@direction}. Please enter movement instructions: "
        instruction = gets.chomp.upcase
        instruction.tr!(' ', '')
        instructions = instruction.split('')
        instructions.each do |char|
            if char != "M" && char != "L" && char != "R"
                puts "Invalid instructions, may only use 'L', 'R', & 'M'"
                break
            end
        end
        move(instructions)
    end

    def move(instructions)
        instructions.each do |char|
            if @direction == "N"
                if char == "M"
                    @y += 1
                elsif char == "L"
                    @direction = "W"
                elsif char == "R"
                    @direction = "E"
                end
            elsif @direction == "S"
                if char == "M"
                    @y -= 1
                elsif char == "L"
                    @direction = "E"
                elsif char == "R"
                    @direction = "W"
                end
            elsif @direction == "E"
                if char == "M"
                    @x += 1
                elsif char == "L"
                    @direction = "N"
                elsif char == "R"
                    @direction = "S"
                end
            elsif @direction == "W"
                if char == "M"
                    @x -= 1
                elsif char == "L"
                    @direction = "S"
                elsif char == "R"
                    @direction = "N"
                end
            end
        end
        puts "Current co-ordinates are #{@x} #{@y} #{@direction}."
    end
end