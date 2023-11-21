=begin 
11:58
problem: Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)
input;output: integer; index of fib number with # of digits = to input

metnal model: if the first digits in the fib numbers being added, do not sum to ten or more, 
then the sum of the actual entire fib numbers does not contain an extra digit. 
Therefore, all you need to do is keep track of the first digit in each fibonaci number and 
if they sum to 10 or greater then you increment a counter which track number of digits in the
most recent fib number (i.e. the sum of the two previous numbers). So, just loop through all
the fib numbers keeping track of what index in the sequence you are working at and once the 
digit counter is equal to the supplied argument, return the index of the current sequence. 


algorithm:
- set `digits_n` to 1
- set `index` to 2
- set fib_left and fib_right to 1
- loop
  - set `new_fib` to the sum of the leftmost digit in fib_left and fib_right
  - increment index by 1
  - reassign left_fib to the value of right_fib
  - reassign right_fib to the first digit in new_fib 
  - increment digits_n by 1 unless new_fib is <10
  - break if digits_n is equal to or greater than `n` (supplied arg)
- return index

=end

def find_fibonacci_index_by_length(n)
  index = 2
  left_fib, right_fib = [1,1]
  loop do
    new_fib = left_fib + right_fib
    index += 1
    break if new_fib.to_s.size >= n
    left_fib, right_fib = right_fib, new_fib
  end
  index
end


# test cases
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847