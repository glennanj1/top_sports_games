class TopSportsGames::CLI


    def call 
        puts "Welcome to the Top Sports Games CLI!"
        TopSportsGames::Game.scrape_site
        list_games
        menu
        goodbye
    end

    def list_games
        puts "Today's Top Sports Games:"
        @games = TopSportsGames::Game.today
        @games.each.with_index(1) do |game, i|
            puts "#{i}, #{game.away} vs. #{game.home} at #{game.date}" 
            
        end
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the game you would like more information on or type exit"
            input = gets.chomp
            if !input.to_i.between?(1, Game.all.count)
                puts "Game not found. Please select a different game!"
                list_games
                menu
            else
                game = Game.all[input.to_i-1]
            end
            puts "Would you like to see another game?"
            puts "Please enter Y or N"
            if another_game == "y"
                list_games
                menu
            else
                puts "Please try again."
                list_games
                menu
            end

        end


    end
        
    
    def display_game_details(game)
        Game.scrape_sit(game)
        puts "Here are the details for #{character.name}:"
        puts "#{game.date}"
        puts "#{game.home}"
        puts "#{game.away}"
        puts "#{game.total}"
    end


    def goodbye
        puts "See you tomorrow for more games."
    end 
end
