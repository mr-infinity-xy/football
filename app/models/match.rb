class Match < ActiveRecord::Base
has_many :runs
belongs_to :team1, :class_name => 'Team', :foreign_key => 'team_a_id'
belongs_to :team2, :class_name => 'Team', :foreign_key => 'team_b_id'
belongs_to :team3, :class_name => 'Team', :foreign_key => 'result'
end
