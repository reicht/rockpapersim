class RockPaperSim
  def initialize(test_number)
    @test_number = test_number
    @armaments = ["rock", "paper", "scissors"]
    @left_weapon = " "
    @right_weapon = " "
    @win_chart = {Left: 0, Right: 0, Tie: 0, Rock: 0, Paper: 0, Scissors: 0}

  end
  def run
    @test_number.times do
      rearm
      contest
    end
    puts @win_chart
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
      @win_chart.each_key do |weaponchecker|
        if weaponchecker.to_s.upcase == @right_weapon.upcase
          @win_chart[weaponchecker] +=1
        end
      end
      @win_chart[:Right] +=1
    elsif (@right_weapon.upcase == ("ROCK") && @left_weapon.upcase == ("SCISSORS")) ||
      (@right_weapon.upcase == ("SCISSORS") && @left_weapon.upcase == ("PAPER")) ||
      (@right_weapon.upcase == ("PAPER") && @right_weapon.upcase == ("ROCK"))
      puts "Left: " + @left_weapon.upcase + " vs Right: " + @right_weapon.upcase + " ----- LEFT WINS"
      @win_chart.each_key do |weaponchecker|
        if weaponchecker.to_s.upcase == @left_weapon.upcase
          @win_chart[weaponchecker] +=1
        end
      end
      @win_chart[:Left] +=1
    else
      puts "Left: " + @left_weapon.upcase + " vs Right: " + @right_weapon.upcase + " -----  TIE BETWEEN"
      @win_chart.each_key do |weaponchecker|
        if weaponchecker.to_s.upcase == @right_weapon.upcase
          @win_chart[weaponchecker] +=1
        end
      end
      @win_chart[:Tie] +=1
    end
  end
end

fabuloso = RockPaperSim.new(3).run
