class PlayerScore < ApplicationRecord
  belongs_to :log
  belongs_to :player
end
