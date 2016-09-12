
require_relative 'place'
require_relative 'board'
require_relative 'cards'
require_relative 'deck'
require_relative 'province'

board = Board.new

stronghold_bow_hook = lambda { | this_card, this_board |
  if (this_card.is_a? Stronghold) || (this_card.is_a? Holding)
    this_board.add_gold( this_card.gold_production )
  end
}

stronghold = Stronghold.new("Stronghold", 7, 3, 5)
stronghold.bow_hook = stronghold_bow_hook
stronghold_place = Place.new(board, stronghold)
stronghold_place.bow

holding1 = Holding.new("Holding 1", 1)
holding2 = Holding.new("Holding 2", 2)
holding1.bow_hook = stronghold_bow_hook
holding2.bow_hook = stronghold_bow_hook

personality = Personality.new("Evil Samurai")

dd = Deck.new(board)
dd.place_on_top(holding1)
dd.place_on_top(personality)
dd.place_on_top(holding2)

province1 = Province.new
dd.deal(province1) # holding2

province1.buy

# dd.deal(province1) # personality
# dd.deal(province1) # holding1

p stronghold_place
p province1
p dd
