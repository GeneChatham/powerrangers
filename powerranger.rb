class Person

	attr_reader :name
	attr_reader :caffeine_level

	def initialize(name)
		@name = name
		@caffeine_level = 0
	end


	def run
		if caffeine_level > 0
			puts "I'm running like a boss!"
			caffeine_level -= 1
		else
			puts "You need some caffeine first!"
		end
	end

	def scream
		puts "AHHHHHHH!!!"
	end

	def drink_coffee(espresso_shots)
		@caffeine_level += espresso_shots
		puts "Your new caffeine level is #{@caffeine_level}."
	end

end

class PowerRanger
end

class EvilNinja
end
