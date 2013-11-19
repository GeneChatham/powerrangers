module Falcon

	def punch(victim, power=@strength)
		victim.scream
		victim.run
		
		if power > 5
			victim.scream
			victim.run
		end
		
		@caffeine_level -= 1

	end

end


class Person

	attr_reader :name
	attr_accessor :caffeine_level

	def initialize(name)
		@name = name
		@caffeine_level = 4.0
	end


	def run
		if caffeine_level > 0
			puts "#{@name} is running away like a boss!"
			@caffeine_level -= 1
		else
			puts "#{@name} needs some caffeine first!"
		end
	end

	
	def scream
		puts "#{@name} yells 'AHHHHHHH!!!'"
	end

	
	def drink_coffee(espresso_shots=1)
		@caffeine_level += espresso_shots
		puts "#{@name}'s new caffeine level is #{@caffeine_level}."
	end

end



class PowerRanger < Person
include Falcon

	def initialize(name, strength, color)
		super(name)
		@strength = strength
		@color = color
	end

	
	def rest
	end

	
	def use_megazord(victim)
		punch(victim, 5000)

		@caffeine_level -=1 	#uses an extra caffeine shot to weild the megazord
	end

end

class EvilNinja < Person
include Falcon

	def initialize(name, strength, evilness)
		super(name)
		@strength = strength
		@evilness = evilness
	end

	
	def cause_mayhem(victim)
		victim.caffeine_level = 0
		puts "#{victim.name}'s caffeine level is now at zero!"
	end


end



def fight_scene

	leela = PowerRanger.new("Leela", 6, "purple")
	fry = PowerRanger.new("Fry", 2, "red")

	wurnstrom = EvilNinja.new("Wurnstrom", 4, 8)
	zap = EvilNinja.new("Zap", 1, 6)

	aimee = Person.new("Aimee")
	zoidberg = Person.new("Zoidberg")

	aimee.drink_coffee(3)
	zoidberg.run

	wurnstrom.punch(zoidberg)
	zap.cause_mayhem(aimee)

	fry.punch(wurnstrom)
	leela.use_megazord(zap)

end


fight_scene
	
	









