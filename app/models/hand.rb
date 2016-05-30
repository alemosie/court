class Hand < ApplicationRecord
  belongs_to :game
  belongs_to :player
  belongs_to :card
  has_many :actions
end
