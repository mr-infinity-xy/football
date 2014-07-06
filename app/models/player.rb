class Player < ActiveRecord::Base
  has_and_belongs_to_many :team,  join_table: :teams_players
  has_many :runs
end
