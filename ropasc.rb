# Take in player choice
puts "Select: (Rock) (Paper) (Scissors)"
weapon = gets.chomp
# Generate computer choice
armaments = ["rock", "paper", "scissors"]
bot_weapon = armaments[rand(0..2)]

# Comparison and Victory
if (armaments.upcase == ("ROCK") && bot_weapon.upcase == ("SCISSORS")) ||

# Print out results
puts weapon
puts bot_weapon
# Restart
