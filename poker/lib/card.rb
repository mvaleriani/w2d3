class Card
  VAL_NAMES = {14 => "Ace", 2 => "Two", 3 => "Three", 4 => "Four", 5 => "Five",
               6 => "Six", 7 => "Seven", 8 => "Eight", 9 => "Nine",
               10 => "Ten", 11 => "Jack", 12 => "Queen", 13 => "King"}

  SUITS = {'diamonds' => '♦', 'clubs' => '♣', 'hearts' => '♥', 'spades' => '♠'}

  attr_reader :suit, :value

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    VAL_NAMES[self.value] + ' of ' + SUITS[self.suit]
  end
end
