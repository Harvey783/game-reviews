
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "game_reviews/version"

Gem::Specification.new do |spec|
  spec.name          = "game_reviews"
  spec.version       = GameReviews::VERSION
  spec.authors       = ["Chris Harvey"]
  spec.email         = ["chharvey@icloud.com"]
  
  spec.summary       = 'Videogames by Metacritic Score'
  spec.description   = "This gem returns a list of games based on a defined minimum Metacritic Score for consoles over two date ranges: recent or alltime."
  spec.homepage      = "https://github.com/Harvey783/game-reviews"
  spec.license       = "MIT"


  spec.files         = ["lib/game_reviews.rb", "lib/game_reviews/cli.rb", "lib/game_reviews/reviews.rb", "lib/game_reviews/scraper.rb", "lib/game_reviews/version.rb"]
  
  spec.executables   = 'game_reviews'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", "~> 1.6", ">= 1.6.6.2"
  spec.add_development_dependency "pry", "~> 0.10.3"
end
