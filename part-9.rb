class Dragon
	def initialize
		print "A baby dragon hatched from an egg. What would you like to name them? "
		@name = gets.chomp
		@asleep = false
		@belly = 10
		@butt = 0
		puts "'Hello there, #{@name}...'"
		puts "#{@name} seems to like their new name. They chirp with delight!"
	end

	def feed
		puts "You feed #{@name}."
		@belly = 10
		timePass
	end

	def walk
		puts "You take #{@name} for a walk to the little dragon park. Good thing you brought your pooper scooper."
		@butt = 0
		timePass
	end

	def bed
		puts "You tuck #{@name} in to bed."
		@asleep = true

		3.times do
			if @asleep
				puts "#{@name} snores solftly, filling the room with smoke."
				timePass
			end
		end

		if @asleep 
			@asleep = false
			puts "#{@name} slowly wakes up."
		end
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts "They giggle, which singes your eyebrows."
		timePass
	end

	def jiggle
		puts "You lift #{@name} into your arms and do the feral dragon jiggle."
		@asleep = true
		puts "He briefly dozes off..."
		timePass

		if @asleep
			@asleep = false
			puts "... but wakes as soon as you stop."
		end
	end


	private


	def hungry?
		@belly <= 2
	end

	def poopy?
		@butt >= 8
	end

	def timePass
		if @belly > 0 #-----FROM BELLY TO BUTT
			@belly -= 1
			@butt  += 1
		else #--------------DRAGON IS STARVING
			if @asleep
				@asleep = false
				puts "#{@name} wakes up with a jolt!"
			end
			puts "#{@name} is starving! In desperation, he eats YOU!"
			exit
		end

		if @butt >= 10
			@butt = 0
			puts "Oh dear... #{@name} had an accident..."
		end

		if hungry?
			if @asleep
				@asleep = false
				puts "#{@name} wakes up with a jolt!"
			end
			puts "#{@name}'s stomach grumbles..."
		end

		if poopy?
			if @asleep
				@asleep = false
				puts "#{@name} wakes up with a jolt!"
			end
			puts "#{@name} does the potty dance..."
		end
	end
end


command = ""
pet = Dragon.new

while command != "exit"
	command = gets.chomp.downcase

	if    command == "help"
		puts "feed, walk, bed, toss, jiggle, bye"
	elsif command == "feed"
		pet.feed
	elsif command == "walk"
		pet.walk
	elsif command == "bed"
		pet.bed
	elsif command == "toss"
		pet.toss
	elsif command == "jiggle"
		pet.jiggle
	elsif command == "bye"
		puts "See you next time!"
		exit
	else 
		puts "They look up at you. Confusion clouding their eyes..."
		puts "(Type 'help' for a list of commands)"
	end
	puts

end