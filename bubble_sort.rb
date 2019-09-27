# frozen_string_literal: true

# Assignment 1

def bubble_sort(arr)
  elem = arr.length
  loop do
    sorted = true # when to break the loop

    (elem - 1).times do |x|
      if arr[x] > arr[x + 1]
        arr[x], arr[x + 1] = arr[x + 1], arr[x]
        sorted = false
      end
    end
    break if sorted == true
  end
  arr
end

# test
y = [4, 3, 78, 2, 0, 2]
puts bubble_sort(y)
# output [0,2,2,3,4,78]

# Assignment 2

def bubble_sort_by(arr)
  elem = arr.length

  loop do
    sorted = true
    (elem - 1).times do |x|
      if yield(arr[x], arr[x + 1]).positive?
        arr[x], arr[x + 1] = arr[x + 1], arr[x]
        sorted = false
      end
    end
    break if sorted == true
  end
  arr
end

# test
puts bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
# output ["hi", "hey", "hello"]
