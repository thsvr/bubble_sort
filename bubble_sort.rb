# frozen_string_literal: true

def bubble_sort(arr)
elem= arr.length 
    loop do
    sorted = false #when to break the loop
        (elem-1).times do |x|
        if arr[x] > arr[x+1]
            arr[x], arr[x+1] = arr[x+1], arr[x]
            sorted= true
        end
        end
        break if sorted == false
    end
    return arr
end

#test
#y= [4,3,78,2,0,2]
#puts bubble_sort(y) 
def bubble_sort_by(arr)
elem= arr.length 
    loop do
    sorted = false
        (elem-1).times do |x|
        if yield(arr[x], arr[x+1]).positive?
            arr[x], arr[x+1] = arr[x+1], arr[x]
            sorted = true
        end
        end
        break if sorted == false
    end
    arr
end
puts bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length}
# ["hi", "hey", "hello"]