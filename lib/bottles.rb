class Bottles
  def verse(n)
    case n
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

  def verses(a, b)
  end

  def song
  end
end
