class Game
    

    @@all = []

    attr_accessor :matchup, :url, :date, :odds, :team
    

    def initialize(matchup, url)
        self.matchup = matchup
        self.url = url
        # self.spread = spread
        # self.ou = ou
        @@all << self
    
    end

    def self.all
        @@all
    end


end






