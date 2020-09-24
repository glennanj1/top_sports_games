class Game
    
    @@all = []
   

    attr_accessor :matchup, :url, :date, :odds
    
    def initialize(matchup, url, odds)
        self.matchup = matchup
        self.url = url
        self.odds = odds
        @@all << self
    end

    def self.all
        @@all
    end

end






