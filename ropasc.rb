#  FUNCTIONAL EXHIBIT OF ORIGINAL
#
# puts "Select: (Rock) (Paper) (Scissors)"
# weapon = gets.chomp
#
# armaments = ["rock", "paper", "scissors"]
# bot_weapon = armaments[rand(0..2)]
#
#
# if (weapon.upcase == ("ROCK") && bot_weapon.upcase == ("SCISSORS")) ||
#   (weapon.upcase == ("SCISSORS") && bot_weapon.upcase == ("PAPER")) ||
#   (weapon.upcase == ("PAPER") && bot_weapon.upcase == ("ROCK"))
#   puts "Player: " + weapon.upcase + " vs Computer: " + bot_weapon.upcase + " ----- PLAYER WINS"
# else
#   puts "Player: " + weapon.upcase + " vs Computer: " + bot_weapon.upcase + " ----- COMPUTER WINS"
# end
#

#Prototyping for later

class RockPaperSim
  def initialize(test_number)
    @test_number = test_number
    @armaments = ["rock", "paper", "scissors"]
    @left_weapon = " "
    @right_weapon = " "
  end
  def run
    @test_number.times do
      rearm
      contest
    end
  end
  def rearm
    @left_weapon = @armaments[rand(0..2)]
    @right_weapon = @armaments[rand(0..2)]
  end
  def contest
    if (@left_weapon.upcase == ("ROCK") && @right_weapon.upcase == ("SCISSORS")) ||
      (@left_weapon.upcase == ("SCISSORS") && @right_weapon.upcase == ("PAPER")) ||
      (@left_weapon.upcase == ("PAPER") && @right_weapon.upcase == ("ROCK"))
      puts "Left: " + @left_weapon.upcase + " vs Right: " + @right_weapon.upcase + " ----- RIGHT WINS"
    else
      puts "Right: " + @left_weapon.upcase + " vs Left: " + @right_weapon.upcase + " ----- LEFT WINS"
    end
  end
end

fabuloso = RockPaperSim.new(3).run
