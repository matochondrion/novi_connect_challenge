# frozen_string_literal: true

require 'card'
require 'hand_rules'
require 'hand_rules/high_card'

RSpec.describe HandRules::HighCard do
  let(:ha) { Card.new('HA') }
  let(:h2) { Card.new('H2') }
  let(:h3) { Card.new('H3') }
  let(:h4) { Card.new('H4') }
  let(:h5) { Card.new('H5') }
  let(:five_cards) { [ha, h2, h3, h4, h5] }

  context '#validate' do
    it 'is truthy' do
      high_card = HandRules::HighCard.new(five_cards)
      expect(high_card.validate).to be_truthy
    end

    it 'used_cards contains the high_card' do
      high_card = HandRules::HighCard.new(five_cards)
      high_card.validate
      expect(high_card.used_cards).to contain_exactly(h5)
    end

    it 'unused_cards contains the 4 lower cards}' do
      high_card = HandRules::HighCard.new(five_cards)
      high_card.validate
      expect(high_card.unused_cards).to contain_exactly(ha, h2, h3, h4)
    end
  end
end
