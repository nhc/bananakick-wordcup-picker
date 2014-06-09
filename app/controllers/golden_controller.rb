class GoldenController < ApplicationController
	respond_to :json

	def index
		@golden = Golden.all
	end
end