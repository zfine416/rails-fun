class WelcomeController < ApplicationController
	def index 
	end

	def upcoming
		address = params[:address]
		dateArr = params[:datepicker].split('/')
		dateArr[0], dateArr[1] = dateArr[1], dateArr[0]
		date = dateArr.join('/').to_time
		@rinks = Rink.near(address , 20)
    	@games = @rinks.map do |rink|
      		rink.game_occurrences.map do |game|
      			if game.date > date
        			game
        		end
      		end
    	end
    end
end
