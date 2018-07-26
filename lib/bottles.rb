class Bottles
  def verse(n)
    case n
    when 0
      "#{quantity(n).capitalize} #{container(n)} of beer on the wall," +
      "#{quantity(n)} #{container(n)} of beer.\n" +
      action(n) +
      "#{quantity(successor(n))} bottles of beer on the wall.\n"
    else
      "#{quantity(n).capitalize} #{container(n)} of beer on the wall," +
      "#{quantity(n)} #{container(n)} of beer,\n" +
      action(n) +
      "#{quantity(successor(n))} #{container(n-1)} of beer on the wall.\n"
    end
  end

  def verses(starting, ending)
    starting.downto(ending).map(&method(:verse)).join("\n")
  end

  def song
    verses(99, 0)
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
