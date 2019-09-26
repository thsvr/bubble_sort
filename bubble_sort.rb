def bubble_sort arr
    elem= arr.length 

    loop do 

        sorted = false #when to break the loop

        (elem-1).times do |x|
            if arr[x] > arr[x+1]
                arr[x], arr[x+1] = arr[x+1], arr[x]
            sorted = true
            end
        end

        break if sorted == false
    end
    arr
end

#test
y= [1,3,2,4,6,8,1,2,9,3]
puts bubble_sort(y)