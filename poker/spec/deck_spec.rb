require "rspec"
require "deck"

RSpec.describe Deck do
  subject(:my_deck) { Deck.new }
  let(:clean_deck) { Deck.new }
  describe "#initialize" do
    it "initializes deck with 52 cards" do
      expect(my_deck.cards.length).to eq(52)
    end
  end

  describe "#shuffle" do
    it "shuffles deck" do
      my_deck.shuffle
      expect(my_deck.cards).to_not eq(clean_deck.cards)
    end
  end

end
