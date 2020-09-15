class TopSportsGames::Game 
    attr_accessor :away, :home, :total

    def self.today
        # Scrape Odds Portal return games and subsequent info
        # TopSportsGames::GameScraper.new("https://www.oddsportal.com/sure-bets/")
        self.scrape_games
    end

    def self.scrape_games
        games = []

        games << self.scrape_site
        
        #go to site, find the games
        #extract properties
        #instantiate a deal

        #go to site

        games
    end

    def self.scrape_site
        doc = Nokogiri::HTML(open("https://www.oddsshark.com/nfl/computer-picks"))

        game = self.new
        game.away = doc.css("span.name.table__name-away.tooltip").text
        game.home = doc.css("span.name.table__name-home.tooltip").text
        game.total = doc.css("pick-computer-pick-total-label.cell-a").text

        game
        
        
        
        
    end
end