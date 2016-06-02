class Card < ApplicationRecord
  has_many :hands

  def self.create_deck
    Card.create!(name: "Assassin1", description: "Assassin")
    Card.create!(name: "Assassin2", description: "Assassin")
    Card.create!(name: "Spy", description: "Bad Guy - Can see private chats")
    Card.create!(name: "Jester", description: "Drunk")
    Card.create!(name: "Castellian", description: "Insomniac")
    Card.create!(name: "Thief", description: "Robber")
    Card.create!(name: "Conspirator", description: "Troublemaker")
    Card.create!(name: "Royal Guard", description: "Sentinel")
    Card.create!(name: "Royal Council", description: "Paranormal Investigator")
    Card.create!(name: "Commander", description: "Gets to see who the Castllian or Emmissary is")
    Card.create!(name: "Emmissary", description: "")
    Card.create!(name: "Cardinal", description: "")
    Card.create!(name: "Lord", description: "Villager")
    Card.create!(name: "Lady", description: "Villager")
    Card.create!(name: "King", description: "Villager but gets two votes")
    Card.create!(name: "Queen", description: "Modified Hunter, who can't be killed")
  end
end
