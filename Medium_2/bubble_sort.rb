=begin
Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.



problem: using bubble sort method, sort the supplied array in place. you can assume array will always contain at least two elements


thoughts: for each set of two elements a, b in array, compare a and b
if a is greater than b, they need to switch places. then repeat the process. if you get through an entire iteration of checking the whole array and no change has been made, you are done and can return the array. 







mental model: 
start a loop
  initialize a copy of `array` (param) to `d_array`
  make a pass through the array sorting
    for each consecutve set of two integers a and b
       if a is greater than b reassign a to the index of b and visa versa (note i of b is just i of a + 1 and i of a is i of b - 1)
        break out of iteration loop

    begin iterating through `array` again from the beginning 
  return the  `array` if it is equal to `d_array`


loop
  save initial state of array
  loop 
    check a and b
    break loop and swap a and b if a > b
  end
  break loop if array is  unchanged post sorting iteration
end

=end

def bubble_sort!(array)
  loop do
    d_array = array.clone
    i = 0
    array.each_cons(2) do |(a, b)|
      if a > b
        array[i + 1] = a
        array[i] = b
        break
      end
      i += 1
    end
    break if d_array == array
  end
  array
end



# test cases
array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)