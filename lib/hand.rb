# frozen_string_literal: true

class Hand
  attr_reader :cards
  attr_reader :used_cards
  attr_reader :unused_cards


  def initialize(cards)
    @cards = cards
    @used_cards = []
    @unused_cards = []
  end

  def name
    'Default: Please override'
  end

  def valid?
    # Override
    validate
  end

  def validate
    # Override
    true
  end
end
