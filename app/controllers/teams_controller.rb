class TeamsController < ApplicationController
	respond_to :json

	def index
		@teams = Team.all
	end
end