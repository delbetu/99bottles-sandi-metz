class Bottles
  def verse(n)
    case n
    when 0
      "No more bottles of beer on the wall," +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more," +
      "99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall," +
      "1 bottle of beer,\n" +
      "Take it down and pass it around," +
      "no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall," + # nil->constant
      "2 bottles of beer,\n" +
      "Take one down and pass it around," +
      "1 bottle of beer on the wall.\n"
    else
      "#{n} bottles of beer on the wall," +
      "#{n} bottles of beer,\n" +
      "Take one down and pass it around," +
      "#{n-1} bottles of beer on the wall.\n"
    end
  end

  def verses(starting, ending)
    more_abstract_solution(starting, ending)
    # conditional_solution(starting, ending)
  end

  def more_abstract_solution(starting, ending)
    starting.downto(ending).map(&method(:verse)).join("\n")
  end

  def conditional_solution(starting, ending)
    if starting == 99
      verse(starting) + "\n" + verse(ending)
    else
      verse(starting + "\n" + verse(1) + "\n" + verse(ending)
    end
  end

  def song
  end
end
