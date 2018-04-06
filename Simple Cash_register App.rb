twenty = 0
ten = 0
five = 0
one = 0
quarter = 0
dime = 0
nickel = 0
penny = 0

puts "Cost of product, cash given..."
raw_input = gets.chomp


input = raw_input.split ","
change_due = (input[1].to_f)*100 - (input[0].to_f)*100
puts change_due
while change_due >= 2000
    twenty +=1
    change_due -= 2000
end
while change_due >= 1000
    ten +=1
    change_due -= 1000
end
while change_due >= 500
    five +=1
    change_due -= 500
end
while change_due >= 100
    one +=1
    change_due -= 100
end
while change_due >= 25
    quarter +=1
    change_due -= 25
end
while change_due >= 10
    dime +=1
    change_due -= 10
end
while change_due >= 5
    nickel +=1
    change_due -= 5
end
while change_due >= 1
    penny +=1
    change_due -= 1
end
puts "Your change: #{twenty} twenties, #{ten} tens, #{five} fives, #{one} ones, #{quarter} quarters, #{dime} dimes, #{nickel} nickels, #{penny} pennies"