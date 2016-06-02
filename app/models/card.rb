class Card < ApplicationRecord
  has_many :hands

  def self.create_deck
    Card.create!(name: "Assassin1", description: "Assassin")
    Card.create!(name: "Assassin2", description: "Assassin")
    Card.create!(name: "Spy", description: "Bad Guy - Can see private chats")
    Card.create!(name: "Jester", description: "Exchange card with center")
    Card.create!(name: "Castellian", description: "Sees own card at the end")
    Card.create!(name: "Thief", description: "Exchange card with another player")
    Card.create!(name: "Conspirator", description: "Switch two other players cards")
    Card.create!(name: "Royal Guard", description: "Protects another player's card")
    Card.create!(name: "Royal Council", description: "Can expose another player's good card")
    Card.create!(name: "Commander", description: "Gets to see who the Castllian or Emmissary is")
    Card.create!(name: "Emmissary", description: "")
    Card.create!(name: "Cardinal", description: "")
    Card.create!(name: "Lord", description: "Does nothing")
    Card.create!(name: "Lady", description: "Does nothing")
    Card.create!(name: "King", description: "Does nothing but gets two votes")
    Card.create!(name: "Queen", description: "Modified Hunter, who can't be killed")
  end
end
