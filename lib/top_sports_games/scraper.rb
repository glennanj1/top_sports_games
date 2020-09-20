class Scraper


    GAME_URL = "https://www.covers.com/sports/nfl/matchups"

    RELATIVE_URL = "https://www.covers.com"



    def self.scrape_games

        html = open(GAME_URL)

        doc = Nokogiri::HTML(html)

    
        # # loop through picks

        doc.css("div.cmg_game_container").each do | games |
           
         

            matchup = games.css(".cmg_matchup_header_team_names").text.strip
            
            
            url = games.css('a').attr('href').value
            Game.new(matchup, url)
        
        end

    end
    

    def self.scrape_details(game)
        
        html = open(RELATIVE_URL+game.url)
        
       

        doc = Nokogiri::HTML(html)

        game.date = doc.css("div.cmg_matchup_header_date").text.strip
        game.odds = doc.css("div.cmg_team_odds").text.strip #gsub later 
        game.team = doc.css('h1').text
        binding.pry
        
       
    #     game.team = doc.css('h1').text
        
    #     # game.odds =
    #     # game.date = binding.pry

    #     game.odds = doc.css('div.container-body').css('span.data-value').children.text
    #     # prediction
       
    end
end