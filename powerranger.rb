class Person

	attr_reader :name
	attr_reader :caffeine_level

	def initialize(name)
		@name = name
		@caffeine_level = 0.0
	end


	def run
		if caffeine_level > 0
			puts "I'm running away like a boss!"
			@caffeine_level -= 1
		else
			puts "You need some caffeine first!"
		end
	end

	def scream
		puts "AHHHHHHH!!!"
	end

	def drink_coffee(espresso_shots=1)
		@caffeine_level += espresso_shots
		puts "Your new caffeine level is #{@caffeine_level}."
	end

end



class PowerRanger < Person

	def initialize(name, strength, color)
		super(name)
		@strength = strength
		@color = color
	end

	def punch(victim, power=@strength)
		victim.scream
		victim.run
		
		if @strength > 5
			victim.scream
			victim.run
		end
		
		@caffeine_level -= 1

	end

	def rest
	end

	def use_megazord(victim)
		punch(victim, 5000)

		@caffeine_level -=1 	#uses an extra caffeine shot to weild the megazord
	end

end

class EvilNinja
end


# Testing

gene = Person.new("Gene")
jill = PowerRanger.new("Jill", 70, "Green")

gene.drink_coffee(2)
gene.drink_coffee(3)
gene.drink_coffee

jill.punch(gene)
jill.use_megazord(gene)

gene.drink_coffee




