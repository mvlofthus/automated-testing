
# card.rb

VALID_SUIT = [:diamonds, :clubs, :hearts,:spades]


class Card
  attr_reader :value, :suit

  def initialize(value, suit)

    @value = value.to_i
      raise ArgumentError.new("not a valid value") if value <1 || value > 13
    @suit = suit.to_sym
      raise ArgumentError.new("not a valid suit") if VALID_SUIT.include?(suit) == false
  end

  def to_s
    face_cards = {
        1 => "Ace",
        11 => "Jack",
        12 => "Queen",
        13 => "King"
    }

    case value
    when 1, 11, 12, 13
      return "#{face_cards[value]} of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
  end



end


# "#{four_of_hearts = Card.new(4, :hearts)
#
# puts four_of_hearts
#
# two_of_diamonds = Card.new(2, :diamonds)
#
# print two_of_diamonds}"