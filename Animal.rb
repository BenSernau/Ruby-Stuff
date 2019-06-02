class Animal

	attr_accessor :str_name, :food, :consumption_rate, :propagation_rate, :pop;

	def initialize(str_name = "name", food = nil, consumption_rate = 0, propagation_rate = 0, pop = 0)
		@str_name = str_name.chomp;
		@food = food;
		@consumption_rate = consumption_rate;
		@propagation_rate = propagation_rate;
		@pop = pop;
	end

	def survive()
		food.pop -= @consumption_rate;
		puts("The " + @str_name + " have eaten " + [@consumption_rate, food.pop + @consumption_rate].min.to_s + " " + food.str_name + ", yielding a total of " + [0, food.pop].max.to_s + " " + food.str_name + ".");
		@pop += @propagation_rate;
		puts(@propagation_rate.to_s + " of the " + str_name + " has/have been born, yielding a total of " + @pop.to_s + " " + @str_name + ".")
	end
end

class Herbivore < Animal

	def survive()
		@pop += @propagation_rate;
		puts(@propagation_rate.to_s + " of the " + str_name + " has/have been born, yielding a total of " + @pop.to_s + " " + @str_name + ".")
	end
end

animals = Array.new();
puts("Welcome to my ecosystem simulator. To begin, please enter the number of \"days\" for which the simulation should run");
death_count = 0;
day_count = gets.to_i rescue 1;
puts("How many species should participate in the simulation (one species per energy pyramid level)?");
species_num = gets.to_i rescue 1;
while animals.length < species_num
	if (animals.length == 0)
		puts("What's the name (plural) of your first animal?  It should be a herbivore.  We will assume it eats plants.");
		animal_name = gets rescue "name";
		puts("How many new ones should appear per day?");
		prop_rate = gets.to_i rescue 0;
		puts("How many would you like to start out with?");
		pop = gets.to_i rescue 0;
		animals[animals.length] = Herbivore.new(animal_name, nil, 0, prop_rate, pop);
	else
		puts("What's the name (plural) of the next animal?");
		animal_name = gets rescue "name";
		puts("How many " + animals[animals.length - 1].str_name + " do they eat every day?");
		cons_rate = gets.to_i rescue 0;
		puts("How many new ones should appear per day?");
		prop_rate = gets.to_i rescue 0;
		puts("How many would you like to start out with?");
		pop = gets.to_i rescue 0;
		animals[animals.length] = Animal.new(animal_name, animals[animals.length - 1], cons_rate, prop_rate, pop);
	end
end

while (day_count > 0)
	puts("*** DAY " + day_count.to_s + " ***");
	day_count -= 1;
	for i in 0..animals.length - 1
		if ((animals[i].food == nil || animals[i].food.pop > 0) && animals[i].pop > 0)
			animals[i].survive();
		else
			puts("It looks like all the " + animals[i].str_name + " are dead.");
			death_count += 1;
		end
	end

	if (death_count == animals.length)
		puts("All of the animals are dead.  Yikes.  That ends the simulation.")
		return;
	end

	death_count = 0;
end

puts("*** end of simulation ***");