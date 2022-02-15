# frozen_string_literal: true

class HandRules
  attr_reader :cards
  attr_reader :used_cards
  attr_reader :unused_cards

  def initialize(cards)
    @cards = cards
    @used_cards = []
    @unused_cards = []
  end
end
