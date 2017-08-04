puts "Bottles, Grandma or Years"
input = gets.chomp.downcase
puts

if input == "bottles"

	bottles = 99
	while bottles != 0
		puts "#{bottles} bottles of beer on the wall,"
		puts "#{bottles} bottles of beer,"
		puts "Take one down, pass it around"
		bottles -= 1
		puts "#{bottles} bottles of beer on the wall!"
		puts
	end

elsif input == "grandma"

	bye = 0 
	puts "Why hello darlin', what brings you here?".upcase
	while bye < 3 
		msg = gets.chomp
		if msg == msg.upcase
			puts "Hah! Not since #{rand(1930..1980)}, y'nasty!".upcase
			if msg == "bye".upcase
				bye += 1
			else 
				bye = 0
			end
		else 
			puts "What?! Speak up child!".upcase
			bye = 0
		end
	end

elsif input == "years"

	leap_years = []
	puts "What year do you want it to start?"
	start = gets.chomp.to_i
	puts "What year do you want it to end?"
	finish = gets.chomp.to_i
	puts
	puts "The leap years between #{start} and #{finish} are "
	while start <= finish
		if start % 4 == 0
			if start % 100 != 0 || start % 400 == 0
				leap_years.push start
			end
		end
		start += 1
	end
	print "#{leap_years}!"
	puts
	
end