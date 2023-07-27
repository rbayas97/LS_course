def print_in_box(string)
    puts "+" + ("-" * (string.length + 2)) + "+"
    puts "|" + (" " * (string.length + 2)) + "|"
    puts "| #{string} |"
    puts "|" + (" " * (string.length + 2)) + "|"
    puts "+" + ("-" * (string.length + 2)) + "+"
end 

print_in_box("To bodly go where no one has gone before.")