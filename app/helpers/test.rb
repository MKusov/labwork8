require '../helpers/my_math_helper'
include MyMathHelper
# a = MersennNumbers.new(10)

# (1..2000).each do |x|
#  p x if processing(x)
# end

(1..3_000_000).each { |x| p x if mersen(x) }
#puts 300_000_000.to_s.length
