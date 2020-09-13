class TopSportsGames::CLI


    def call 
        list_games
        menu
        goodbye
    end

    def list_games
        puts "Today's Top Sports Games:"
        @games = TopSportsGames::Game.today
        @games.each.with_index(1) do |game, i|
            puts "#{i}, #{game.name}"
        end
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the game you would like more information on or type exit"
            input = gets.strip.downcase

            if input.to_i > 0 
                puts @games[input.to_i-1]
            elsif input == "list"
                list_games
            else
                puts "Not sure what you want, type list or exit."
            end
        end
    end
            


    def goodbye
        puts "See you tomorrow for more games."
    end 
end
