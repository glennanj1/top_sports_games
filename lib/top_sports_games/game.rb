class TopSportsGames::Game 
    attr_accessor :name, :total, :date, :url

    def self.today
        # Scrape Odds Portal return games and subsequent info
        # TopSportsGames::GameScraper.new("https://www.oddsportal.com/sure-bets/")
        self.scrape_games
    end

    def self.scrape_games
        games = []

        
        #go to site, find the games
        #extract properties
        #instantiate a deal

        #go to site

        games
    end


end