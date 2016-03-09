class RockPaperSim
  def initialize(test_number)
    @test_number = test_number
    @armaments = ["rock", "paper", "scissors"]
    @left_weapon = " "
    @right_weapon = " "
    @win_chart_player = {Left: 0, Right: 0, Tie: 0}
    @win_chart_tool = {Rock: 0, Paper: 0, Scissors: 0}

  end
  def run
    @test_number.times do
      rearm
      contest
    end
    puts @win_chart_player
    puts @win_chart_tool
  end
  def rearm
    @left_weapon = @armaments[rand(0..2)]
    @right_weapon = @armaments[rand(0..2)]
  end
  def contest
    if (@left_weapon.upcase == ("ROCK") && @right_weapon.upcase == ("SCISSORS")) ||
      (@left_weapon.upcase == ("SCISSORS") && @right_weapon.upcase == ("PAPER")) ||
      (@left_weapon.upcase == ("PAPER") && @right_weapon.upcase == ("ROCK"))
      @win_chart_tool.each_key do |weaponchecker|
        if weaponchecker.to_s.upcase == @right_weapon.upcase
          @win_chart_tool[weaponchecker] +=1
        end
      end
      @win_chart_player[:Right] +=1
    elsif (@right_weapon.upcase == ("ROCK") && @left_weapon.upcase == ("SCISSORS")) ||
      (@right_weapon.upcase == ("SCISSORS") && @left_weapon.upcase == ("PAPER")) ||
      (@right_weapon.upcase == ("PAPER") && @right_weapon.upcase == ("ROCK"))
      @win_chart_tool.each_key do |weaponchecker|
        if weaponchecker.to_s.upcase == @left_weapon.upcase
          @win_chart_tool[weaponchecker] +=1
        end
      end
      @win_chart_player[:Left] +=1
    else
      @win_chart_tool.each_key do |weaponchecker|
        if weaponchecker.to_s.upcase == @right_weapon.upcase
          @win_chart_tool[weaponchecker] +=1
        end
      end
      @win_chart_player[:Tie] +=1
    end
  end
end

fabuloso = RockPaperSim.new(ARGV[0].to_i)
fabuloso.run
