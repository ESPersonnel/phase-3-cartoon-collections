# def roll_call_dwarves# code an argument here
#   # Your code here
# end

# def summon_captain_planet# code an argument here
#   # Your code here
# end

# def long_planeteer_calls# code an argument here
#   # Your code here
# end

# def find_the_cheese# code an argument here
#   # the array below is here to help
#   cheese_types = ["cheddar", "gouda", "camembert"]
# end

# Complete the following methods in cartoon_collections.rb.

# #roll_call_dwarves
# dwarves

# This method should accept an array of dwarf names, for instance:

# ["Doc", "Dopey", "Bashful", "Grumpy"]
# It should then print out each name, in number order, using puts. The print-out should look like this:

# 1. Doc
# 2. Dopey
# 3. Bashful
# 4. Grumpy
# Look into the #with_index (Links to an external site.) method to access the index for each element as you are iterating.

# #summon_captain_planet
# captain-planet

# This method should accept an array argument of planeteer calls that will look like this:

# planeteer_calls = ["earth", "wind", "fire", "water", "heart"]
# It should then capitalize each element and add an exclamation point at the end. The return value of this method should be an array, in this example:

# summon_captain_planet(planeteer_calls)
# # => ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
# The #map method might be appropriate for this task, take a look at it here (Links to an external site.).

# Once the test for this method is passing, move on to the next method, long planeteer calls.

# #long_planeteer_calls
# The #long_planeteer_calls method should accept an array of calls. The method should return true if any of the calls are longer than four characters. For example:

# short_words = ["puff", "go", "two"]
# long_planeteer_calls(short_words)
# #=> false

# assorted_words = ["two", "go", "industrious", "bop"]
# long_planeteer_calls(assorted_words)
# #=> true
# Notice the return value of this method is either true or false, depending on the array it was given as an argument.

# Checkout the Ruby docs on arrays (Links to an external site.) for a hint.

# #find_the_cheese
# dancing-mice

# The #find_the_cheese method should accept an array of strings. It should then look through these strings to find and return the first string that is a type of cheese. The types of cheese that appear are "cheddar", "gouda", and "camembert".

# For example:

# snacks = ["crackers", "gouda", "thyme"]
# find_the_cheese(snacks)
# # => "gouda"

# soup = ["tomato soup", "cheddar", "oyster crackers", "gouda"]
# find_the_cheese(soup)
# # => "cheddar"
# If, sadly, a list of ingredients does not include cheese, return nil:

# ingredients = ["garlic", "rosemary", "bread"]
# find_the_cheese(ingredients)
# # => nil
# You can assume that all strings will be lowercase. Take a look at the #include? (Links to an external site.) method for a hint. This method asks you to return a string value instead of printing it so keep that in mind.

def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |dwarf, index|
    puts "#{index + 1}. #{dwarf}"
  end
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map do |call|
    call.capitalize + "!"
  end
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? do |call|
    call.length > 4
  end
end

def find_the_cheese(ingredients)
  cheese_types = ["cheddar", "gouda", "camembert"]
  ingredients.find do |ingredient|
    cheese_types.include?(ingredient)
  end
end
