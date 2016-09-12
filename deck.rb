
class Deck

  def initialize(board)
    @deck = Array.new
    @board = board
  end

  def place_on_top(card)
    @deck.unshift(card)
  end

  def cards
    @deck
  end

  def deal(province)
    top_card = @deck.shift
    province.add(top_card)
  end

end
