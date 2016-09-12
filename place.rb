
class Place

  def initialize(board, card)
    @bowed = false
    @board = board
    @card = card
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
