class Bottles
  def verse(n)
    # conditional(n)
    # sparsed_conditional(n)
    # interpolation(n)
  end

  def conditional(n)
    # (unconditional->if)
    if n == 99 # (nil->constant) new integer 99
      "99 bottles of beer on the wall," +
      "99 bottles of beer,\n" +
      "Take one down and pass it around," +
      "98 bottles of beer on the wall.\n"
    else
      "3 bottles of beer on the wall," + # (nil->constant) new string constant
      "3 bottles of beer,\n" +
      "Take one down and pass it around," +
      "2 bottles of beer on the wall.\n"
    end
  end

  def sparsed_conditional(n)
    # (unconditional->if)
    if n == 99 # (nil->constant)
      number = 99 # (nil->constant->scalar)
    else
      number = 3 # (nil->constant)
    end

    "#{number} bottles of beer on the wall," + # (constant->expression)
    "#{number} bottles of beer,\n" +
    "Take one down and pass it around," +
    "#{number-1} bottles of beer on the wall.\n"
  end

  def interpolation(n)
    "#{n} bottles of beer on the wall," + # (constant->expression)
    "#{n} bottles of beer,\n" +
    "Take one down and pass it around," +
    "#{n-1} bottles of beer on the wall.\n"
  end

  def verses(a, b)
  end

  def song
  end
end
