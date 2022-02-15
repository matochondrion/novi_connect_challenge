# frozen_string_literal: true

class Hand::HighCard < Hand
  def valid?
    !!validate
  end

  def validate
    high_card = HandRules::HighCard.new(five_cards)
    high_card.validate
  end
end
