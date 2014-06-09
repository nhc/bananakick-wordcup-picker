class Team < ActiveRecord::Base
	belongs_to :group
	has_one :player
end
