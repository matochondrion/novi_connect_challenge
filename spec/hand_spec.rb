# frozen_string_literal: true

require 'card'
require 'hand'

RSpec.describe Hand do
  context '#cards' do
    it 'returns cards' do
      five_cards = [Card.new('hA'), Card.new('h2'), Card.new('h3'), Card.new('h4'), Card.new('h5')]

      expect(Hand.new(five_cards).cards).to match_array five_cards
    end
  end
end
