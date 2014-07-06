class Team < ActiveRecord::Base
  belongs_to :franchise
  has_and_belongs_to_many :players,  join_table: :teams_players
  has_many :matches1, :class_name => 'Match', :foreign_key => 'team_a_id'
	has_many :matches2, :class_name => 'Match', :foreign_key => 'team_b_id'
	has_many :matches3, :class_name => 'Match', :foreign_key => 'result'
end
