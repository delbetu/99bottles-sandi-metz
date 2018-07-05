class Bottles
  def verse(n)
    # both are the same transformation uncondition->conditional
    # interpolated_conditional is harder to understand.
    # stark_conditional
    # interpolated_conditional
  end

  def stark_conditional(n)
    if n == 2 # nil->constant unconditional->conditional, 
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

  def interpolated_conditional(n)
    "#{n} bottles of beer on the wall," +
    "#{n} bottles of beer,\n" +
    "Take one down and pass it around," +
    "#{n-1} bottle#{'s' unless n-1 == 1} of beer on the wall.\n" # unconditional->if
  end

  def verses(a, b)
  end

  def song
  end
end
