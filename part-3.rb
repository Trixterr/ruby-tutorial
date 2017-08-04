puts "Boss or Contents?"
input = gets.chomp.downcase
puts

if input == "boss"

	puts "What do ya want?".upcase
	request = gets.chomp
	puts "What do you mean #{request}?! You're fired!!".upcase

elsif input = "contents"

	width = 50

	puts "-"*width
	puts "Table of Contents".upcase.center(width)
	puts
	puts   "Chapter 1: Numbers".ljust(width/2) +   "page 1".rjust(width/2)
	puts   "Chapter 2: Letters".ljust(width/2) +  "page 72".rjust(width/2)
	puts "Chapter 3: Variables".ljust(width/2) + "page 118".rjust(width/2)
	puts "-"*width

end