def stock_picker (prices)
    max_of_each_day = Hash.new
    prices[0..-2].map.with_index do |buy_price, buy_day|

        differences = prices[buy_day + 1..-1].map { |sell_price| sell_price - buy_price } 

        max_of_each_day[[buy_day, (differences.index(differences.max) + buy_day + 1)]] = differences.max

    end

    max_of_each_day.key(max_of_each_day.values.max)

end

p stock_picker([17,3,6,9,15,8,6,1,10])

p stock_picker([99,85,77,80,92,85,70])

p stock_picker([2,4,6,8,10])

p stock_picker([10,8,6,4,2,0])

# given the collection of numbers, find two-number combination where number1 subtracted by number2 returns biggest value
# return the index of those two numbers
# number1 position must be before number2 position
# loop through each number in array from the first number to the one before last number as number1
# find the gap from each number positioned after number1 position