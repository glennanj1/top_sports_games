class TopSportsGames::Game 
    attr_accessor :name, :total, :date, :url

    def self.today
        # Scrape Odds Portal return games and subsequent info
        game_1 = self.new
        game_1.name = "O. Ljubljana - Mura"
        game_1.total = "2.5"
        game_1.date = "09/16"
        game_1.url = "https://www.oddsportal.com/sure-bets/"

        [game_1]
    end


end