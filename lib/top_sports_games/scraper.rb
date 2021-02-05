class Scraper
    GAME_URL = "https://www.covers.com/sports/nfl/matchups"
    RELATIVE_URL = "https://www.covers.com"

    def self.scrape_games

        html = open(GAME_URL)

        doc = Nokogiri::HTML(html)

        doc.css("div.cmg_game_container").each do | games |
           
            matchup = games.css(".cmg_matchup_header_team_names").text.strip
            url = games.css('a').attr('href').value
            odds = games.css("div.cmg_team_odds").css('span').text
            
                    
            Game.new(matchup, url, odds)

        end 
    end
end

    