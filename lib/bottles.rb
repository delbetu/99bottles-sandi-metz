class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map(&method(:verse)).join("\n")
  end

  def verse(n)
    bottle_number = BottleNumber.new(n)

    "#{bottle_number.quantity.capitalize} #{bottle_number.container} of beer on the wall," +
    "#{bottle_number.quantity} #{bottle_number.container} of beer.\n" +
    bottle_number.action +
    "#{bottle_number.successor.quantity} #{bottle_number.successor.container} of beer on the wall.\n"
  end

  def container(n)
    BottleNumber.new(n).container
  end

  def pronoun(n)
    BottleNumber.new(n).pronoun
  end

  def quantity(n=0)
    BottleNumber.new(n).quantity
  end

  def successor(n)
    BottleNumber.new(n).successor
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
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def action
    if number == 0
      "Go to the store and buy some more,"
    else
      "Take #{pronoun} down and pass it around,"
    end
  end

  def successor
    if number == 0
      99
    else
      number-1
    end
  end
end
