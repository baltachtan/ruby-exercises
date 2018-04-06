puts "This app helps user to save and retreive saved messages"

inbox = []

continue = true
while continue

puts "Would you like to Save or Retreive a message?"

response = gets.chomp.downcase

  if response == "save" || response == "s"
  puts "What message would you like to Save?"
  message = gets.chomp.downcase
  inbox << message

  puts "Your message ID is: " + inbox.length.to_s


  #puts "Your message number is #{inbox.index(message)}"

  elsif response == "retreive" || response == "r"
  puts "What message number would you like to retreive?"


  message_id = gets.chomp.to_i
  puts "Your message is: " + inbox[message_id - 1]

  #puts inbox[(gets.chomp)].to_i

 

puts "Would you like to continue?"

response = gets.chomp.downcase
if response == "no" ||response == "n"
continue = false

elsif response == "y" || response == "yes"
continue = true

end

end


end



