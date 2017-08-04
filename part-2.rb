puts "Greetings or Number?"
input = gets.chomp.downcase
puts

if input == "greetings"

	puts "What is your first name??"
	first_name = gets.chomp
	puts "What's your middle name?"
	middle_name = gets.chomp
	puts "What's your last name?"
	last_name = gets.chomp
	puts "Greetings #{first_name} #{middle_name} #{last_name}!"

elsif input == "number"

	puts "What's your favorite number?"
	fave_num = gets.chomp.to_i
	puts "#{fave_num}? May I suggest #{fave_num * 10}? It's literally 10 times better!"
	
end