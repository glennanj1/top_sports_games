class TopSportsGames::Game 
    attr_accessor :away, :home, :total, :date, :url, :games

    def self.today
        # Scrape Odds Portal return games and subsequent info
        # TopSportsGames::GameScraper.new("https://www.oddsportal.com/sure-bets/")
        self.scrape_games
    end

    def self.scrape_games
        @games = []

        @games << self.scrape_site
        
        #go to site, find the games
        #extract properties
        #instantiate a deal

        #go to site

        @games
    end

    def self.scrape_site
        doc = Nokogiri::HTML(open("https://www.oddsshark.com/nfl/computer-picks"))
        # away = doc.css('span.name.table__name-away tooltip').text
        # home = doc.css('span.name.table__name-home tooltip').text
        

        teams = doc.css('div.picks-card').each do |team|
            # away = doc.css('span.name.table__name-away.tooltip').text
            # home = doc.css('span.name.table__name-home.tooltip').text
            matchup = { 
                        away: team.css('span.attr(table__name-away.tooltip').text,
                        home: team.css('span.name.table__name-home.tooltip').text

                    }
            
            binding.pry


        end
        
        
        
    end

end


