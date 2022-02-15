# frozen_string_literal: true

class HandRules::HighCard < HandRules
  def validate
    high_card = cards.max_by(&:value)
    @used_cards << high_card
    @unused_cards = @cards - @used_cards
  end
end
