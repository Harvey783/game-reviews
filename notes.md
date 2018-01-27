Running bin/reviews starts the CLI through GameReviews::CLI.new.call which then calls #start

#start 
  calls #welcome
    #welcome puts Reviews by Metacritic Score options
  Gets and saves #welcome selection to input or exits program
    selection used as value to evaluate in case statement
  Gets review score and saves to score
    final arguement in case statement
  Case statement provides #list arguement values
    evaluates #welcome selection to true
    name arguement is predefined
    url arguement is predefined and determines which url to scraper
    score arguement determines the minimum review score of games displayed
    #list creates a new Scraper instance
  
  The Scraper class have url and score attributes set on initialization
    Attributes are readable and writable
    Class method #games returns array from GameReviews::Reviews
    #clear clears array once data is scraped and displayed
    
    
  
  
  
    

