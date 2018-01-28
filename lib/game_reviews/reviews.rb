class GameReviews::Reviews
	
	attr_accessor :title, :metascore, :release_date, :link

	def initialize(details = {})
		@title = details[:title]
		@metascore = details[:metascore]
		@release_date = details[:release_date]
		@link = details[:link]
	end
end
