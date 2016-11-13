# module for my app
module MyMathHelper
  # logic

  def mersen(a)
    return false if a.even?
    case a
      when 1..10000
        @p=a/2+1
      when 10001..100000
        @p=a/200
      else
        @p=a/(a[0].to_i*10**a.to_s.length)
       # @p=Math.sqrt(a)
    end
    (2..@p).each {|x| return false if (a%x).zero?}
    arr=[2,3,5,7,11,13,17,19,31]
    arr.each {|x| return true if equality(a,x)}
    false
  end

  def equality(a, b)
    a == 2**b - 1
  end

end
