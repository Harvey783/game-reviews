class GameReviews::CLI
  
  def call
    start
  end
  
  def start
    welcome
    input = nil
    while input != 'EXIT'
    puts ""
    puts "Type number of desired selection or Exit to quit"
    puts ""
    input = gets.strip.upcase
    
    if input != 'EXIT'
      puts ""
      puts ""
      puts "Enter minimum review score (Out of 100)"
      puts ""
      score = gets.strip
      puts ""
    end
  end
    
  def list(name, url, score)
    puts "----------------------------------------------------------------------"
    puts "#{name}"
    puts "----------------------------------------------------------------------"
    list = GameReviews::Scraper.new(url, score)
    list.clear
    list.scraper
    list.display
    puts ""
    start
  end
    
  def welcome
    puts ""
    puts "----------------------------------------------------------------------"
    puts " - - - - - - - - - -  REVIEWS BY METACRITIC SCORE - - - - - - - - - - "
    puts "----------------------------------------------------------------------"
    puts ""
    puts "     1. All PS4 Games                   2. Latest PS4 Releases"
    puts ""
    puts "   3. All Xbox One Games              4. Latest Xbox One Releases"
    puts ""
    puts " 5. All Nintendo Switch Games      6. Latest Nintendo Switch Releases"
    puts ""
  end
  
  case input
    when "1"
      list("ALL PS4 GAMES", 
      "http://www.metacritic.com/browse/games/release-date/available/ps4/metascore", 
      score)
              
    when "2"
      list("LATEST PS4 RELEASES", 
      "http://www.metacritic.com/browse/games/release-date/new-releases/ps4/metascore", 
      score)
              
    when "3"
      list("ALL XBOX ONE GAMES", 
      "http://www.metacritic.com/browse/games/release-date/available/xboxone/metascore", 
      score)
              
    when "4"
      list("LATEST XBOX ONE RELEASES", 
      "http://www.metacritic.com/browse/games/release-date/new-releases/xboxone/metascore", 
      score)
              
    when "5"
      list("ALL NINTENDO SWITCH GAMES", 
      "http://www.metacritic.com/browse/games/release-date/available/switch/metascore", 
      score)
              
    when "6"
      list("LATEST NINTENDO SWITCH RELEASES", 
      "http://www.metacritic.com/browse/games/release-date/new-releases/switch/metascore", 
      score)              
            
    when "EXIT"
      exit == true
    end
  end
end