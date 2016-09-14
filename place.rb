
class Place

  attr_reader :card

  def initialize(card, board)
    @bowed, @card, @board = false, card, board
  end

  def bow
    return unless @card && ! @bowed
    @bowed = true
    @card.bow_hook.call(@card, @board) if @card.bow_hook
  end

  def straighten
    return unless @card && @bowed
    @bowed = false
    # TODO: add straighten hook
  end

  def to_s
    @card.to_s
  end

end

class Zone

  attr_reader :name

  def initialize(name, board)
    @name, @board, @places = name, board, []
  end

  def add(card)
    place = Place.new(card, @board)
    @places.unshift(place)
    place
  end

  def buy
    place = @places.shift
    card = place.card
    new_place = @board.play_zone.add(card)
    @board.remove_gold(card.cost)
    new_place
  end

  def to_s
    "Name: #{@name}, contents: #{@places.map { |place| place.to_s }.to_s}"
  end

end
