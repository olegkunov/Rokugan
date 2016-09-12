
class Card

  attr_reader :name, :bow_hook

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
  end

  def to_s
    "Name: #{@name}, Str: #{@province_strength}, Gld: #{@gold_production}, Hon: #{@starting_honor}"
  end

end


class Holding < Card

  attr_reader :gold_production

  def initialize(name, gold)
    @name = name
    @gold_production = gold
  end

end


class Personality < Card

  def initialize(name)
    @name = name
  end

end