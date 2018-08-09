class Game < ApplicationRecord
	has_many :logs
	has_many :player_scores, :through => :logs
end
