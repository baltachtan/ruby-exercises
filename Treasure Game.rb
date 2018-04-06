require "io/console"
system "cls"

puts "Use 'I', 'J', 'M' and 'K' to move Warrior around"
puts ""
warrior_x = 5
warrior_y = 5
grid = Array.new(21){Array.new(21){"."}}
grid [1][1] = "t"
grid [3][4] = "t"
grid [4][8] = "t"
grid [warrior_x][warrior_y] = "@"
def draw_screen grid_in_function
    (0..20).each do |i|
        (0..20).each do |j|
            print grid_in_function[j][i]
            print " "
        end
        puts
    end
end
draw_screen grid
    input = ""
while (input !="q")
    input = STDIN.getch
    if input != ""
        system "cls"
        if input == "i" && warrior_y >0
            warrior_y -= 1
            if grid [warrior_x][warrior_y] == "t"
                found_treasure = "t"
            end
            grid [warrior_x][warrior_y+1]="."
            grid [warrior_x][warrior_y]="@"
        end
        if input == "k" && warrior_x <20
            warrior_x += 1
            if grid [warrior_x][warrior_y] == "t"
                found_treasure = "t"
            end
            grid [warrior_x-1][warrior_y]="."
            grid [warrior_x][warrior_y]="@"
        end
        if input == "m" && warrior_y <20
            warrior_y += 1
            if grid [warrior_x][warrior_y] == "t"
                found_treasure = "t"
            end
            grid [warrior_x][warrior_y-1]="."
            grid [warrior_x][warrior_y]="@"
        end
        if input == "j" && warrior_x >0
            warrior_x -= 1
            if grid [warrior_x][warrior_y] == "t"
                found_treasure = "t"
            end
            grid [warrior_x+1][warrior_y]="."
            grid [warrior_x][warrior_y]="@"
        end
        draw_screen grid
        if found_treasure == "t"
            found_treasure = ""
            puts "Arrrrrg, there be treasure Here"
        else
            puts "Nothing here but dust"
        end
    end       
end
 