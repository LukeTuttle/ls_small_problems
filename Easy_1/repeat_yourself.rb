# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(str, n)
  iterator = 0
  until iterator == n
    puts str
    iterator += 1
  end
end

repeat('Hello', 3)