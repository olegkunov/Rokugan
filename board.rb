
class Board

  attr_reader :play_zone

  def initialize
    @gold = 0
    @provinces = [Zone.new('Pr.1', self), Zone.new('Pr.2', self), Zone.new('Pr.3', self), Zone.new('Pr.4', self)]
    @play_zone = Zone.new('Play', self)
  end

  def add_gold(gold)
    @gold += gold
  end

  def zones
    {:board => self, :play_zone => @play_zone, :provinces => @provinces}
  end

end
