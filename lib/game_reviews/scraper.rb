class GameReviews::Scraper
  
  attr_accessor :url, :score

  def initialize(url, score)
    @url = url 
    @score = score
  end
  
  @@all = []
  
  def self.all
    @@all 
  end 

  def clear
    @@all.clear
  end
  

  def scraper
   game_list = Nokogiri::HTML(open(self.url, 'User-Agent' => 'Chrome'))
   
    game_list.css("ol.list_products li.game_product").each do |game|

      @@all << GameReviews::Reviews.new({
        :title => game.css("div.product_title a").text.strip,
        :metascore => game.css("div.metascore_w").text,
        :release_date => game.css("li.release_date span.data").text,
        :link => 'http://www.metacritic.com/' + 
                  game.css("div.product_title a").attribute("href").text
      })
    end
  end

  def display
    @@all.delete_if{|game| game.metascore.to_i < @score.to_i}.each_with_index do |game, i|
      puts "  \n#{i+1}. #{game.title} \n    
      Metascore: #{game.metascore}    
      Release Date: #{game.release_date}    
      Link: #{game.link}\n \n"
    end
  end
end