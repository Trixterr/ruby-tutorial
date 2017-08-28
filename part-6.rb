puts "EngNum or Bottles?"
input = gets.chomp.downcase
puts 

def englishNumber number 
	numString = ""

	onesPlace = ["one",    "two",    "three",    "four",     "five",    "six",     "seven",     "eight",    "nine"    ]
	tensPlace = ["ten",    "twenty", "thirty",   "fourty",   "fifty",   "sixty",   "seventy",   "eighty",   "ninety"  ]
	teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

	if number < 0 
		return "Don't be so negative..."
	elsif number == 0
		return "zero"
	end

	#-------------------------------------------------TRILLIONS

	left = number
	write = left/1000000000000
	left -= write*1000000000000

	if write > 0
		trillions = englishNumber write
		numString += trillions + " trillion"
		if left > 0 
			numString += " "
		end
	end

	#--------------------------------------------------BILLIONS

	write = left/1000000000
	left -= write*1000000000

	if write > 0
		billions = englishNumber write
		numString += billions + " billion"
		if left > 0 
			numString += " "
		end
	end

	#--------------------------------------------------MILLIONS

	write = left/1000000
	left -= write*1000000

	if write > 0
		millions = englishNumber write
		numString += millions + " million"
		if left > 0 
			numString += " "
		end
	end

	#-------------------------------------------------THOUSANDS

	write = left/1000
	left -= write*1000

	if write > 0 
		thousands = englishNumber write
		numString += thousands + " thousand"
		if left > 0 
			numString += " "
		end
	end

	#--------------------------------------------------HUNDREDS

	write = left/100
	left -= write*100

	if write > 0
		numString += onesPlace[write-1] + " hundred"
		if left > 0
			numString += " and "
		end
	end

	#----------------------------------------------TENS & TEENS

	write = left/10
	left -= write*10

	if write > 0 
		if (write == 1) && (left > 0)
			numString += teenagers[left-1]
			left = 0
		else 
			numString += tensPlace[write-1]
		end 

		if left > 0 
			numString += "-"
		end
	end

	#------------------------------------------------------ONES

	write = left 
	left = 0

	if write > 0
		numString += onesPlace[write-1]
	end

	return numString

end


if input == "engnum"

	puts "Pick a number, any number!"
	num = gets.chomp.to_i
	puts englishNumber(num)

elsif input == "bottles"

	puts "How many bottles?"
	num = gets.chomp.to_i
	puts

	while num > 0
		puts "#{englishNumber(num)} bottles of beer on the wall,".capitalize
		puts "#{englishNumber(num)} bottles of beer,".capitalize
		puts "take one down, pass it around,".capitalize
		num -= 1
		puts "#{englishNumber(num)} bottles of beer on the wall~".capitalize
		puts
	end
end