ships = Array.new(15) {Array.new(15){"0"}}
show = Array.new(15) {Array.new(15){"0"}}

    ships [2][3] = "1"
    ships [4][6] = "1"
    ships [3][7] = "1"
    ships [4][8] = "1"
    ships [12][14] = "1"


(0..14).each do |i|
    (0..14).each do |j|
        print show[i][j]
    end

    puts    
end

continue = true
while continue
   
puts "Enter row number (0-14)"
row = gets.chomp.to_i

puts "Enter column number (0-14)"
column = gets.chomp.to_i


if ships[row][column] == "1"
    puts "Hit!"
    ships[row][column] = "0"
    show [row][column] = "*"
else

    puts "Miss!"
    show [row][column] = "X"

end

(0..14).each do |i|
    (0..14).each do |j|
        print show[i][j]
    end
    puts    
end

puts "TYPE Q TO EXIT THE GAME"
puts ""
puts "PRESS ANY KEY TO CONTINUE PLAYING"
response = gets.chomp.downcase
if response == "q"
continue = false

end

end