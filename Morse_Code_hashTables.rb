letters = {'a'=>".-",'b'=>"-...",'c'=>"-.-.",'d'=>"-..",'e'=>".",'f'=>"..-.",'g'=>"--.",'h'=>"....",'i'=>"..",'j'=>".---",'k'=>"-.-",'l'=>".-..",'m'=>"--",'n'=>"-.",'o'=>"---",'p'=>".--.",'q'=>"--.-",'r'=>".-.",'s'=>"...",'t'=>"-",'u'=>"..-",'v'=>"...-",'w'=>".--",'x'=>"-..-",'y'=>"-.--",'z'=>"--..",' '=>" ",'.'=>".-.-.-"}

    continue = true
    while continue
       
puts "What type of conversion do you want to do?"
puts "1: Convert to Morse Code 2: Convert to English"
str_answer = gets.to_i

if str_answer == 1
        
    puts "What is your message in English?"
		message = gets.chomp.downcase
		str_answer = ""
		
		message.each_char do |i|
						
            str_answer = str_answer+letters[i]+" "
        end
        


elsif str_answer == 2

		puts "What is your message in Morse Code. (Place Spaces Between Characters)"
		message = gets.chomp
		str_answer = ""

		
if message.match("[-. ]")


	while message.include? "  "

			    	message = message.sub("  ", " + ")
	end
		message = message.split
		message.each do |i|

if(i=="+")

					str_answer = str_answer+" "

				else

				str_answer = str_answer+letters.key(i)

				end
		    end
	    else
		    puts "WRONG! You have entered morse code characters"
	end
else
		puts "WRONG! That is an incorrect response "
end
puts str_answer

puts "Type no if you don't want to continue"
puts "Press any key to start over"
response = gets.chomp.downcase
if response == "no"
continue = false
end
end