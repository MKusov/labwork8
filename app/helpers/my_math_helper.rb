# module for my app
module MyMathHelper
  # logic

  def mersen(a)
    return false if a.even?
    (2..Math.sqrt(a)).each {|x| return false if (a%x).zero?}
    arr=[2,3,5,7,11,13,17,19,31]
    arr.each {|x| return true if equality(a,x)}
    false
  end

  def equality(a, b)
    a == 2**b - 1
  end

end
