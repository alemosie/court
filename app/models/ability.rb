class Ability < ApplicationRecord
  has_many :hand_abilities
  has_many :hands, through: :hand_abilities

end