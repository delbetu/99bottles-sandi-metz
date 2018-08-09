class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map(&method(:verse)).join("\n")
  end

  def verse(n)
    bottle_number = BottleNumber.for(n)
    # whishful code
    # next_bottle_number = bottle_number.successor
    succ = bottle_number.successor
    next_bottle_number = BottleNumber.for(succ)

    "#{bottle_number}".capitalize + " of beer on the wall," +
    "#{bottle_number} of beer.\n" +
    bottle_number.action +
    "#{next_bottle_number} of beer on the wall.\n"
  end

  def bottle_number_for(number)
    if number == 0
      BottleNumber0
    elsif number == 1
      BottleNumber1
    else
      BottleNumber
    end.new(number)
  end
end

class BottleNumber
  def self.for(number)
    case number
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    else
      BottleNumber
    end.new(number)
  end

  attr_reader :number
  def initialize(number)
    @number = number
  end

  def container
    "bottles"
  end

  def pronoun
    "one"
  end

  def quantity
    number.to_s
  end

  def action
    "Take #{pronoun} down and pass it around,"
  end

  def successor
    # should invoke factory
    number-1
  end

  def to_s
    "#{quantity} #{container}"
  end
end

class BottleNumber0 < BottleNumber
  def quantity
    "no more"
  end

  def action
    "Go to the store and buy some more,"
  end

  def successor
    # should invoke factory
    BottleNumber.for(99)
  end
end

class BottleNumber1 < BottleNumber
  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end
