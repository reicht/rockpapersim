# Take in player choice
puts "Select: (Rock) (Paper) (Scissors)"
weapon = gets.chomp
# Generate computer choice
armaments = ["rock", "paper", "scissors"]
bot_weapon = armaments[rand(0..2)]

# Comparison and Victory
if (weapon.upcase == ("ROCK") && bot_weapon.upcase == ("SCISSORS")) ||
  (weapon.upcase == ("SCISSORS") && bot_weapon.upcase == ("PAPER")) ||
  (weapon.upcase == ("PAPER") && bot_weapon.upcase == ("ROCK"))
  puts "Player: " + weapon.upcase + " vs Computer: " + bot_weapon.upcase + " ----- PLAYER WINS"
else
  puts "Player: " + weapon.upcase + " vs Computer: " + bot_weapon.upcase + " ----- COMPUTER WINS"
end
# Print out results
# puts weapon
# puts bot_weapon
# Restart

#Prototyping for later

# class EquipBot
#   def initialize()
#     armaments = ["rock", "paper", "scissors"]
#     bot_weapon = armaments[rand(0..2)]
#   end
# end
