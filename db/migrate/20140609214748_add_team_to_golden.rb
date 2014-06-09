class AddTeamToGolden < ActiveRecord::Migration
  def change
  	add_column :goldens, :team_id, :integer
  end
end
