class PlayersController < ApplicationController
	respond_to :json

	def index
		@players = Player.all
	end
end