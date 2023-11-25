=begin 
6:29
sort an array of passed in values using merge sort. You can assume that this array may contain only one type of data.
 And that data may be either all numbers or all strings.

Merge sort is a recursive sorting algorithm that works by breaking down the array elements into nested sub-arrays, 
then recombining those nested sub-arrays in sorted order. It is best shown by example. 

For instance, let's merge sort the array [9,5,7,1]. Breaking this down into nested sub-arrays, we get:

[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]

We then work our way back to a flat array by merging each pair of nested sub-arrays:

[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]

problem: write a method which take an array of one data type only and recursively breaks it apart into subarray and rejoins them in sorted order.
I can use the merge method written in other problem
thoughts:
recombining begins once you have single element arrays
recursion involves calling a method merge_sort from whithin merge_sort itself. 
Once some defined condition is met, merge sort returns a value, this is what starts the chain back up the line

need to split input array into two arrays
need to call merge_sort on each of those two arrays
    how to handle odd number of elements?
skip both steps above if the resulting arrays from the split contain 0 or 1 elements and instead merge them into a sorted array and return


[1 2 3 4 5 6 7 8 9]
[1 2 3 4 5]           [6 7 8 9]
[1 2 3] [4 5]         [6 7]  [8 9]
[1 2] [3]   [4] [5]   [6] [7] [8] [9]
[1] [2]

algorithm:
 - split arr into arr1 and arr2 
 - call merge supply the return value of calling merge sort on arr1 and as a second argument of calling merge sort on arr2

=end


def merge_sort(arr)
  return arr if arr.size == 1
  midpoint = (arr.size / 2.0).ceil
  arr1 = arr.slice(0, midpoint)
  arr2 = arr.slice(midpoint..)

  merge(merge_sort(arr1), merge_sort(arr2))
end


def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

# test cases
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

a = merge_sort((1..1_000_000).to_a.shuffle)
p a.minmax
p a.first(30)
