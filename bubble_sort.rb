

def bubble_sort(values)

    (values.length - 1).times do |i|

        swap = 0
        
        0.upto(values.length-(2+i)) do |j|
            
            if values[j] > values[j + 1] 
                values[j], values[j + 1] = values[j + 1], values[j]
                swap += 1
            end
        end

        break if swap == 0
    
    end

    values
    
end

p bubble_sort([4,3,78,2,0,2])

p bubble_sort([5,1,4,2,8])


# compare the value with the value next to it in the array
# If the first value is bigger than the second value, swap the position
# If not, leave the way it is
# continue throughout the array and repeat 
# Ignore n number of the values from the right after completing repat for n number of times
# The most number of repeat to finish sorting is number of values - 1 times
# if sorted before that, finish and return sorted array