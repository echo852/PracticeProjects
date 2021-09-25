# it's a snakes and ladders game!
# it's a long explanation... check the link: https://www.codewars.com/kata/587136ba2eefcb92a9000027/train/ruby

# NOT COMPLETE YET

class SnakesLadders

    attr_reader :event_squares, :player_number, :player_locations

    def initialize
        @event_squares = [[16,6],[46,25],[49,11],[62,19],[64,60],[74,53],[89,68],[92,88],[95,75],[99,80],[2,38],[7,14],[8,31],[15,26],[21,42],[28,84],[36,44],[51,67],[71,91],[78,98],[87,94]]
    
        # whose turn is it? it'll have to be 0 and 1 instead of 1 and 2 for array locations
        @player_number = 0
    
        # where are the players currently?
        @player_locations = [0,0]
    end

    # check to see if the player landed on a snake or a ladder (one of the event squares)
    def square_check(location)
        event_squares.each {|event|
            if player_locations[player_number] == event[0]
                player_locations[player_number] = event[1]
            end
        }
    end

    # update the current player's location
    def update_location(die_sum)
        current_location = player_locations[player_number].to_i
        new_location = current_location + die_sum
        player_locations[player_number] = new_location
        square_check(current_location) # move the player to the corresponding square if they land on an event square
    end

    # check to see where the player is
    def check_location(loc)
        if loc == 100
            puts "Congratulations!  Player #{player_number} wins!"
        elsif loc > 100
            difference = loc - 100
            go_back = 100 - difference
            player_locations[player_number] = go_back
            puts "Player #{player_number+1} is on square #{go_back}"
        else
            puts "Player #{player_number+1} is on square #{loc}"
        end
    end

    # change current player
    def swap_players
        if player_number == 0
            @player_number = 1
        else
            @player_number = 0
        end
    end

    # final method to actually play the game!
    def play(die1,die2)
        sum = die1 + die2
        update_location(sum)
        loc = player_locations[player_number]
        check_location(loc)
        swap_players if die1 != die2
    end
end

game = SnakesLadders.new

game.play(1,1)
game.play(1,5)
game.play(6,2)
game.play(1,1)