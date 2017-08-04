puts "Sort or Contents?"
input = gets.chomp.downcase
puts

if input == "sort"

	array = []
	input = "i will not repeat"
	while input.length > 0 
		input = gets.chomp
		array.push input
	end
	puts array.sort 

elsif input == "contents"

	contents = {"1: Numbers" => "1", "2: Letters" => "72", "3: Variables" => "118"}
	width = 50

	puts "-"*width
	puts "Table of Contents".upcase.center(width)
	puts 

	contents.each do |chap, page|
		puts "Chapter #{chap}".ljust(width/2) + "page #{page}".rjust(width/2)
	end

	puts "-"*width
	
end