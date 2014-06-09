class Player < ActiveRecord::Base
	default_scope { order('id ASC') }
	belongs_to :team

	validates_uniqueness_of :team_id, :on => :update
end
