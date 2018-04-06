puts "WELCOME!"
puts ""
puts "This app will tell you how many carrots, beets and corn you can plant on your Gadren Box"
puts "Let's start!"

continue = true
while continue

puts "What's the length of the box?"
length = gets
length = length.to_i

puts "What's the width?"
width = gets
width = width.to_i

area = length * width
perimeter = 2 * (length + width)

puts "The area is " + area.to_s + " and the perimeter is " + perimeter.to_s

carrot = area * (16/16.0)
corn = area * (3/16.0)
beets = area * (9/16.0)

puts "You can plant " + carrot.to_i.to_s + " carrots, " + beets.to_i.to_s + " beets or " + corn.to_i.to_s + " corn."
puts ""
puts "Press Q to exit the application or press any key to start over"
response = gets.chomp.downcase
if response == "q"
continue = false
end
end
