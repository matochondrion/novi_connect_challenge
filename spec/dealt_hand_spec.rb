# frozen_string_literal: true

require 'card'
require 'dealt_hand'

RSpec.describe DealtHand do
  context 'validations' do
    it 'raises an error if fewer than 5 cards entered' do
      five_cards = [Card.new('hA'), Card.new('h2'), Card.new('h3'), Card.new('h4'), Card.new('h5')]

      expect { DealtHand.new(five_cards) }.not_to raise_exception
    end

    it 'raises an error if fewer than 5 cards entered' do
      four_cards = [Card.new('h2'), Card.new('h3'), Card.new('h4'), Card.new('h5')]

      expect { DealtHand.new(four_cards) }.to raise_exception(DealtHand::MustHaveFiveCards)
    end

    it 'raises an error if more than 5 cards entered' do
      six_cards = [Card.new('hA'), Card.new('h2'), Card.new('h3'), Card.new('h4'), Card.new('h5'), Card.new('h6')]

      expect { DealtHand.new(six_cards) }.to raise_exception(DealtHand::MustHaveFiveCards)
    end
  end
end
