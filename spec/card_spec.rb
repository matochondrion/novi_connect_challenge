# frozen_string_literal: true

require 'card'

RSpec.describe Card do
  context 'validations' do
    it 'raises an error if fewer than 2 characters entered' do
      expect { Card.new('H') }.to raise_exception(Card::WrongLengthError)
    end

    it 'raises an error if more than 2 characters entered' do
      expect { Card.new('HHH') }.to raise_exception(Card::WrongLengthError)
    end
  end

  context '#initialize' do
    it 'converts lowercase suit to uppercase' do
      card = Card.new('h1')
      expect(card.suit).to eq 'H'
    end
  end

  context '#suit' do
    it 'returns the stored face alpha value' do
      card = Card.new('H1')
      expect(card.suit).to eq 'H'
    end

    it 'converts lowercase suit to uppercase' do
      card = Card.new('h1')
      expect(card.suit).to eq 'H'
    end
  end

  context '#suit_value' do
    it 'returns 0.1 when the suite is "C"' do
      card = Card.new('C1')

      expect(card.suit_value).to eq 0.1
    end

    it 'returns 0.2 when the suite is "D"' do
      card = Card.new('D1')

      expect(card.suit_value).to eq 0.2
    end

    it 'returns 0.3 when the suite is "H"' do
      card = Card.new('H1')

      expect(card.suit_value).to eq 0.3
    end

    it 'returns 0.4 when the suite is "S"' do
      card = Card.new('S1')

      expect(card.suit_value).to eq 0.4
    end
  end

  context '#rank' do
    it 'returns the stored rank character for 2' do
      card = Card.new('H2')

      expect(card.rank).to eq '2'
    end
  end

  context '#rank_value' do
    it 'returns the stored rank value for "2-9"' do
      (2..9).each do |i|
        card = Card.new("H#{i}")

        expect(card.rank_value).to eq i
      end
    end

    it 'returns the stored rank value for "A"' do
      card = Card.new('HA')

      expect(card.rank_value).to eq 1
    end

    it 'returns the stored rank value for "J"' do
      card = Card.new('HJ')

      expect(card.rank_value).to eq 10
    end

    it 'returns the stored rank value for "Q"' do
      card = Card.new('HQ')

      expect(card.rank_value).to eq 11
    end

    it 'returns the stored rank value for "K"' do
      card = Card.new('HK')

      expect(card.rank_value).to eq 12
    end
  end

  context '#value' do
    it 'returns the 1.1 value for "CA"' do
      card = Card.new('CA')

      expect(card.value).to eq 1.1
    end

    it 'returns the 2.2 value for "D2"' do
      card = Card.new('D2')

      expect(card.value).to eq 2.2
    end

    it 'returns the 3.3 value for "H3"' do
      card = Card.new('H3')

      expect(card.value).to eq 3.3
    end

    it 'returns the 4.4 value for "S4"' do
      card = Card.new('S4')

      expect(card.value).to eq 4.4
    end
  end
end
