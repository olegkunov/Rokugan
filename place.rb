
class Place

  def initialize(card, board)
    @bowed = false
    @card = card
    @board = board
  end

  def bow
    return unless @card && ! @bowed
    @bowed = true
    if @card.bow_hook
      @card.bow_hook.call(@card, @board)
    end
  end

  def straighten
    return unless @card && @bowed
    @bowed = false
    # TODO: add straighten hook
  end

end

class Zone

  attr_reader :name

  def initialize(name, board)
    @name = name
    @board = board
    @places = []
  end

  def add(card)
    place = Place.new(card, @board)
    @places.unshift(place)
    place
  end

  def buy
    p @board.zones[:play_zone]
    puts 'Buying'
  end

end
