class Log < ApplicationRecord
  belongs_to :game
  has_many :player_scores, :dependent => :destroy
  accepts_nested_attributes_for :player_scores, :reject_if => lambda { |p| p[:player_id].blank? }, :allow_destroy => true
  has_many :results, :through => :player_scores
end
