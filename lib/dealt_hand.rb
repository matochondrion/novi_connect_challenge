class DealtHand
  class MustHaveFiveCards < StandardError; end

  attr_reader :cards

  def initialize(cards)
    raise MustHaveFiveCards if cards.size != 5

    @cards = cards
  end

  def best_hand
    # returns a Hand class
  end
end
