class OrangeTree
	def initialize
		@age = 0
		@height = 0
		@orangeCount = 0

		print "You plant an orange seed. "
	end

	def height
		puts "The orange tree is #{@height} meters tall."
	end

	def countTheOranges
		print "There are #{@orangeCount} oranges in the tree. "

		if @age < 5
			puts "It is too young to bare fruit."
		elsif @orangeCount > 0 
			puts "All of them ready for harvest."
		end
	end

	def pickAnOrange
		if @orangeCount > 0
			puts "You pick an orange from the tree. Om nom, it was delicious!"
			@orangeCount -= 1
		else
			puts "Sorry, there are no oranges in the tree.. Better luck next year!"
		end
	end

	def oneYearPasses
		if @age < 50
			@age += 1
			@height += 0.2
			@orangeCount = 0 

			puts "The orange tree is #{@age} years old. "

			if @age >= 5
				@orangeCount = @age * 2
				puts "It has #{@orangeCount} oranges."
			end
		else
			puts "After a long and happy life, the orange tree dies of old age."
			exit
		end
	end
end

command = ""
tree = OrangeTree.new
puts "What would you like to do?"	
puts

until command == "vagina"
	command = gets.chomp.downcase

	if    command == "help"
		puts "height, count, pick, year, bye"
	elsif command == "height"
		tree.height
	elsif command == "count"
		tree.countTheOranges
	elsif command == "pick"
		tree.pickAnOrange
	elsif command == "year"
		tree.oneYearPasses
	elsif command == "bye"
		puts "See you next time, tree!"
		exit
	else
		puts "Error: Invalid command. \n
			  Please type 'help' for a list of commands."
	end

	puts
end