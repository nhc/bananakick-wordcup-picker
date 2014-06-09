class Team < ActiveRecord::Base
	belongs_to :group
	has_one :player

	def get_player_name
		self.player.name
	end
end
