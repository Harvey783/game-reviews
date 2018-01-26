Running bin/reviews starts the CLI through GameReviews::CLI.new.call which then calls #start

#start 
  calls #welcome
  saves user selection to input
    is evaluated in the case input statement
  saves review score to score
  case input statement evaluates to true and calls #list
  #list creates a new instance of GameReviews:Scraper
  
  
  
    

