class Deck
  SUITS = ['diamonds', 'clubs', 'hearts', 'spades']

  attr_reader :cards

  def initialize
    @cards = []
    populate
  end

  def populate
    SUITS.each do |suit|
      (2..14).each do |value|
        self.cards << Card.new(value, suit)
      end
    end
  end

  def shuffle
    self.cards.shuffle!
  end

  def deal

  end

  def return_cards(cards)

  end

end
