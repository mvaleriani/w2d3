require "rspec"
require "card"

RSpec.describe Card do
  subject(:my_card) { Card.new(14, "hearts")}

  describe "#initialize" do
    it "initializes card with given value" do
      expect(my_card.value).to eq(14)
    end

    it "initializes card with given suit" do
      expect(my_card.suit).to eq("hearts")
    end
  end

end
