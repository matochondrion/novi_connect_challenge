# frozen_string_literal: true

class Hand
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def name
    'Default: Please override'
  end

  def used_cards
    # Override
    []
  end

  def unused_cards
    # Override
    []
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
