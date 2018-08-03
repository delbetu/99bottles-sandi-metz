class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map(&method(:verse)).join("\n")
  end

  def verse(n)
    bottle_number = bottle_number_for(n)
    succ = bottle_number.successor
    next_bottle_number = bottle_number_for(succ)

    "#{bottle_number}".capitalize + " of beer on the wall," +
    "#{bottle_number} of beer.\n" +
    bottle_number.action +
    "#{next_bottle_number} of beer on the wall.\n"
  end

  def bottle_number_for(number)
    if number == 0
      BottleNumber0
    else
      BottleNumber
    end.new(number)
  end
end

class BottleNumber
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def container
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun
    if number == 1
      "it"
    else
      "one"
    end
  end

  def quantity
    number.to_s
  end

  def action
    "Take #{pronoun} down and pass it around,"
  end

  def successor
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
    99
  end
end
