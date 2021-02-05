class CLI

    def call 
        puts "Welcome to the Top Sports Games CLI!"
        puts "Today's Top Sports Games:"
        Scraper.scrape_games
        show_games
        options  
    end

    def show_games
        Game.all.each.with_index(1) do | game, i |
            puts "#{i}. #{game.matchup}"
        end

    end

    def options
        puts "Please select a number to get more information on an event."
        input = gets.chomp
        if !input.to_i.between?(1, Game.all.count)
            puts "Game not found. Please select a different game!"
            show_games
            options
        else
            game = Game.all[input.to_i-1]
            display_game_details(game)
        end
        puts "Would you like to see another game?"
        puts "Please enter Y or N"
        another_game = gets.strip.downcase
        if another_game == "y"
            show_games
            options
        elsif another_game == "n"
            puts "Thanks for using my CLI!"
            exit
        end
    end
        
    def display_game_details(game)
        if game.odds == ""
            puts "This game already happened"
        else
            puts "Here are the details for #{game.matchup}"
            puts "Game odds:#{game.odds}" 
        end
    end
end
