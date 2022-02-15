Install
--------------------------------------------------------------------------------

Instructions
--------------------------------------------------------------------------------
Write a function in Ruby that accepts five arguments that represent five cards.

Each card will be represented by two characters.

The first character is the value of the card: 2-9, A, K, Q, and J.

The second character is the suit: h, s, d, and c.

The function should return the Poker combination the hand contains. Return
values include royal flush, straight flush, four of a kind, full house, flush,
straight, three of a kind, two pair, pair, and high card.

It should return the highest-ranked combination only.

Plan
--------------------------------------------------------------------------------

Requirements
--------------------------------------------------------------------------------

Rules
--------------------------------------------------------------------------------
Ranked hands:
    10. royal flush
    9. straight flush
    8. four of a kind
    7. full house
    6. flush
    5. straight
    4. three of a kind
    3. two pair
    2. pair
    1. and high card.

Tests
--------------------------------------------------------------------------------

Plan
--------------------------------------------------------------------------------
* Bundler: Gemfile with ruby version and rspec

### Models:
* `DealtCards`
  - validate number of cards
  - validate number card values
  - validate number card values
  - `set_cards` (creats actual cards)
  - `#input_cards`
  - `#best_hand`
    - {name: "flush", `used_cards`: [], `unused_cards`: [] }
  - `#flush?`
  - `#straight?`
  - `...`
* `Card`
  - `#suit`
  - `#suit_value`
  - `#rank`
  - `#rank_value`
  - `#value`
* `Hand`
  - `#name`
  - `#cards`
  - `#used_cards` (sorted by card.value)
  - `#unused_cards` (sorted by card.value)
  - `#valid?`
  - `#validate`
* `HandRules` (returns: `valid?`, `used`, `unused`) class methods
  - `::royal`
  - `::straight`
  - `::of a kind`
  - `::flush`
  - `::high card`
* `Hands`
  - royal flush
  - straight flush
  - four of a kind
  - full house
  - flush
  - straight
  - three of a kind
  - two pair
  - pair
  - and high card.
* `SerializedHand`
--------------------------------------------------------------------------------
