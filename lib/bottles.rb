class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map(&method(:verse)).join("\n")
  end

  def verse(n)
    "#{quantity(n).capitalize} #{container(n)} of beer on the wall," +
    "#{quantity(n)} #{container(n)} of beer.\n" +
    action(n) +
    "#{quantity(successor(n))} #{container(successor(n))} of beer on the wall.\n"
  end

  def container(n)
    if n == 1
      "bottle"
    else
      "bottles"
    end
    BottleNumber.new(n).container(n)
  end

  def pronoun(n)
    if n == 1
      "it"
    else
      "one"
    end
  end

  def quantity(n=0)
    if n == 0
      "no more"
    else
      n.to_s
    end
  end

  def action(n)
    if n == 0
      "Go to the store and buy some more,"
    else
      "Take #{pronoun(n)} down and pass it around,"
    end
  end

  def successor(n)
    if n == 0
      99
    else
      n-1
    end
  end
end

class BottleNumber
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def container(n)
    if n == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(n)
    if n == 1
      "it"
    else
      "one"
    end
  end

  def quantity(n=0)
    if n == 0
      "no more"
    else
      n.to_s
    end
  end

  def action(n)
    if n == 0
      "Go to the store and buy some more,"
    else
      "Take #{pronoun(n)} down and pass it around,"
    end
  end

  def successor(n)
    if n == 0
      99
    else
      n-1
    end
  end
end
