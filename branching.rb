# These are the codes for different branching operations

#Using if..else statements
number =10
if number.class == Integer
    puts "Its a number"
elsif number.class == Float
    puts "Its a float"
else
    puts "Cant determine the type!"
end


#using unless modifier
#its like reverse of if..else
unless false
    puts "The first block is executed here!"
else
    puts "The else block is executing here" 
end

# Using while 
number = 10
while number < 15
    p number
    number += 1
end

# Using do..while
loop do
    puts "Enter q to exit else press anything...:"
    input = gets.chomp.downcase

    break if input == "q"
end

# Using until 
number =  10
until number==15
    p number 
    number +=1
end

# Using switch case statements
# Dont use this because its memory intensive
number = 1
case number
    when 1
        puts "case 1"
    when 2
        puts "case 2"
    else
        puts "No case "
end