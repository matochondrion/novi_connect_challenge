# frozen_string_literal: true

class Card
  class WrongLengthError < StandardError; end

  SUIT_VALUES = { 'C' => 0.1, 'D' => 0.2, 'H' => 0.3, 'S' => 0.4 }.freeze
  RANK_VALUES = {
    'A' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'J' => 10,
    'Q' => 11,
    'K' => 12
  }.freeze

  def initialize(card_string)
    # TODO: raise InvalidCardError if card_string_invalid?
    raise WrongLengthError if card_string.size != 2

    @card_string = card_string.upcase
  end

  def suit
    @card_string.split('').first
  end

  def suit_value
    SUIT_VALUES[suit]
  end

  def rank
    @card_string.split('').last
  end

  def rank_value
    RANK_VALUES[rank]
  end

  def value
    rank_value + suit_value
  end
end
