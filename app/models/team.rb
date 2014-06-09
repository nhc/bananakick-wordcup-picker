class Team < ActiveRecord::Base
	belongs_to :group
	has_one :player
	has_one :golden

	def get_player_name
		self.player.name
	end
end
