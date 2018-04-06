puts "Braille exercise"



puts "What's your message?"
message = gets.chomp

message.each_char do |i|
    
    if i == 'a' || i == 'b' || i == 'e' || i == 'h' || i == 'k' || i == 'l' || i == 'o' || i == 'r' || i == 'u' || i == 'v' || i == 'z'
        print "0. "
    end

    if i == 'c' || i == 'd' || i == 'f' || i == 'g' || i == 'm' || i == 'n' || i == 'p' || i == 'q' || i == 'x' || i == 'y'
        print "00 "
    end

    if i == 'i' || i == 'j' || i == 's' || i == 't' || i == 'w'
        print ".0 "
    end
end

message.each_char do |i|
    
    if i == 'a' || i == 'c' || i == 'k' || i == 'm' || i == 'u' || i == 'x'
    print ".. "
    end

    if i == 'b' || i == 'f' || i == 'i' || i == 'l' || i == 'p' || i == 's'
    print "0. "
    end

    if i == 'd' || i == 'e' || i == 'n' || i == 'o' || i == 'v' || i == 'y' || i == 'z'
    print ".0 " 
    end

    if i == 'g' || i == 'h' || i == 'j' || i == 'q' || i == 'r' || i == 't' || i == 'w'
    print "00 "
    end
end

message.each_char do |i|

    if i == 'a' || i == 'b' || i == 'c' || i == 'd' || i == 'e' || i == 'f' || i == 'g' || i == 'h' || i == 'i' || i == 'j'
    print ".. "
    end

    if i == 'k' || i == 'l' || i == 'm' || i == 'n' || i == 'o' || i == 'p' || i == 'q' || i == 'r' || i == 's' || i == 't'
    print "0. "
    end

    if i == 'u' || i == 'v' || i == 'x' || i == 'y' || i == 'z'
    print "00 "
    end

    if i == 'w'
    print ".0 "
    end
end

puts





























