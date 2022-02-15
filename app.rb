require_relative 'lib/card'
# cards = []
cards = [
  Card.new('hA'),
  Card.new('h2'),
  Card.new('h3'),
  Card.new('h4'),
  Card.new('h5')
]

# Prompts
# TODO: Add validation that that cards are not repeated (ie: Deck class)
unless cards.length == 5 # for testing
  puts "Hello, deal me a card! (eg: 2 of Hearts = H2)"
  cards << Card.new(gets.strip)
  puts "Deal me a second card! (eg: 2 of Hearts = H2)"
  cards << Card.new(gets.strip)
  puts "Deal me a third card! (eg: 2 of Hearts = H2)"
  cards << Card.new(gets.strip)
  puts "Deal me a fourth card! (eg: 2 of Hearts = H2)"
  cards << Card.new(gets.strip)
  puts "Deal me a fith card! (eg: 2 of Hearts = H2)"
  cards << Card.new(gets.strip)
end

puts ""
puts cards.each { |c| puts c.value }
