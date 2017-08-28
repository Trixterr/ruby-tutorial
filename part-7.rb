puts "Age or Die?"
input = gets.chomp.downcase
puts

if input == "age"
	puts "What is your birth date? (YYYY, MM, DD)"
	date = gets.chomp
	puts

	bday = Time.mktime(date)
	time = Time.new

	secondsInAge = time - bday
	secondsInYear = 31557600
	age = secondsInAge.to_i/secondsInYear
	counter = 1

	puts "You are currently #{secondsInAge.to_i} seconds old. "

	if secondsInAge < 1000000000
		print "You will be one billion seconds old on #{bday+1000000000}. Mark your calendar!"
	else
		print "You turned a billion seconds old on #{bday+1000000000}! Mazel tov!"
	end
	puts
	puts

	puts "It also looks like you're #{age} years old..."

	while counter <= age
		print "SPANK! "
		counter += 1
	end

	puts "That's #{age} spanks! I don't know why I'm giving you an imaginary spanking but the program made me do it."

elsif "die"

	class Die
		def initialize
			roll
		end

		def roll
			@num = rand(6) + 1
		end

		def show
			puts "You have rolled a #{@num}!"
		end

		def cheat
			@num = gets.chomp.to_i

			if @num < 1 || @num > 6
				roll
			end
		end
	end
	
	myDie = Die.new

	myDie.cheat
	puts myDie.show

end