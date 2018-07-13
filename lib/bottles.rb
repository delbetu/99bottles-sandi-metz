class Bottles
  def verse(n)
    case n
    when 0
      "No more bottles of beer on the wall," +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more," +
      "99 bottles of beer on the wall.\n"
    when 1
      "#{n} #{container(n)} of beer on the wall," +
      "#{n} #{container(n)} of beer,\n" +
      "Take #{pronoun(n)} down and pass it around," +
      "#{quantity(n-1)} bottles of beer on the wall.\n"
    else
      "#{n} #{container(n)} of beer on the wall," +
      "#{n} #{container(n)} of beer,\n" +
      "Take #{pronoun(n)} down and pass it around," +
      "#{quantity(n-1)} #{container(n-1)} of beer on the wall.\n"
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
      n
    end
  end
end
