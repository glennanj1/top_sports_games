class TopSportsGames::CLI


    def call 
        list_games
        menu
        goodbye
    end

    def list_games
        puts "Today's Top Sports Games:"
        puts "Games 1-10"
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the game you would like more information on or type exit"
            input = gets.strip.downcase
            case input
            when "1"
                puts "info on 1"
            when "2"
                puts "info on 2"
            when "3"
                puts "info on 3"
            end
        end
    end


    def goodbye
        puts "See you tomorrow for more games."
    end 

end
