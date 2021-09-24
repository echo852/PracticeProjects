# it's a snakes and ladders game!
# it's a long explanation... check the link: https://www.codewars.com/kata/587136ba2eefcb92a9000027/train/ruby

# NOT COMPLETE YET

class SnakesLadders
    snake_squares = [[16,6],[46,25],[49,11],[62,19],[64,60],[74,53],[89,68],[92,88],[95,75],[99,80]]
    ladder_squares = [[2,38],[7,14],[8,31],[15,26],[21,42],[28,84],[36,44],[51,67],[71,91],[78,98],[87,94]]

    # whose turn is it?
    player_number = 1

    # where are the players currently?
    player_locations = [[1,0],[2,0]]

    # check to see if the player landed on a snake
    def snake_check(location)
        snake_squares.select {|(head,tail)|
            head == location
        }.map {|(head,tail)|
            tail
        }
    end

    # check to see if the player landed on a ladder
    def ladder_check(location)
        ladder_squares.select {|(bottom,top)|
            bottom == location
        }.map {|(bottom,top)|
            top
        }
    end

    # change current player
    def swap_players
        if player_number == 1
            player_number = 2
        else
            player_number = 1
        end
    end

    # update the current player's location
    def update_location(num)
        player_locations[player_number] += num
    end

    # check to see where the player is
    def check_location
        loc = player_locations[player_number]
        if loc == 100
            return "Congratulations!  Player #{player_number} wins!"
        elsif loc > 100
            # do something
        end

        # also check if there's a snake or a ladder here
    end

    def play(die1,die2)
        sum = die1 + die2
        update_location(sum)
        check_location
    end
end