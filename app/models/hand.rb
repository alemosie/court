class Hand < ApplicationRecord
  belongs_to :game
  belongs_to :player
  belongs_to :card
  has_many :hand_abilities
  has_many :abilities, through: :hand_abilities
end
