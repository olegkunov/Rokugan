
class Card

  attr_reader :name, :bow_hook, :cost

  def bow_hook=(proc)
    @bow_hook = proc
  end

end


class Stronghold < Card

  attr_reader :gold_production

  def initialize(name, strength, gold, honor)
    @name = name
    @province_strength = strength
    @gold_production = gold
    @starting_honor = honor
    @cost = 0
  end

  def to_s
    "Name: #{@name}, Cst: #{@cost}, Str: #{@province_strength}, Gld: #{@gold_production}, Hon: #{@starting_honor}"
  end

end


class Holding < Card

  attr_reader :gold_production

  def initialize(name, cost, gold)
    @name = name
    @cost = cost
    @gold_production = gold
  end

  def to_s
    "Name: #{@name}, Cst: #{@cost}, Gld: #{@gold_production}"
  end

end


class Personality < Card

  def initialize(name)
    @name = name
  end

end