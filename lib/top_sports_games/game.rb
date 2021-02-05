class Game
    
    @@all = []
   

    attr_reader :matchup, :url, :odds
    
    def initialize(matchup, url, odds)
        @matchup = matchup
        @url = url
        @odds = odds
        @@all << self
    end

    def self.games_with_odds
        
        self.all.reject do |game|
            game.odds == ""
        end
        


    end

    def self.all
        @@all
    end

end






