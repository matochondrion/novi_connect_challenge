# frozen_string_literal: true

require 'card'
require 'hand_rules'

RSpec.describe HandRules do
  context '#used_cards' do
    it 'returns empty array' do
      five_cards = [Card.new('hA'), Card.new('h2'), Card.new('h3'), Card.new('h4'), Card.new('h5')]

      expect(HandRules.new(five_cards).used_cards).to match_array []
    end
  end

  context '#unused_cards' do
    it 'returns empty array' do
      five_cards = [Card.new('hA'), Card.new('h2'), Card.new('h3'), Card.new('h4'), Card.new('h5')]

      expect(HandRules.new(five_cards).unused_cards).to match_array []
    end
  end
end
