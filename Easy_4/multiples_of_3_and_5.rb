# problem: 
#  - write a method that searches for all multiples of 3 and 5 that lie between 1 and a provided number.
#  - return sum of those numbers

# Questions: 
# assume supplied integer  is greater than 1
# the set of multiples of three and five must be unique (i.e. dont double count multiples held in common)



# Input/Output: integer; integer

# Mental model:
# find every multiple of 3 and 5 between 1 and `n`. Make sure the set is unique and return the sum of the set. 
# How to find multiples:
#  - for `num` in [3,5] multiply `num` by `i` in 1..`n`, check the product is less than or equal to `n` and push onto array
#      otherwise, proceed to next `num`.
      # make the array unique, then the sum the array


# Algorithm: 

def multisum(n)
  multiples = []
  [3,5].each do |num|
    (1..n).each do |i|
      product = num * i
      break if product > n

      multiples << product
    end
  end
  multiples.uniq.inject(&:+)
end

# tests
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168