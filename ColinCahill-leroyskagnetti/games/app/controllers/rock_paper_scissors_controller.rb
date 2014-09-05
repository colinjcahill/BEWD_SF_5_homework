class RockPaperScissorsController < ApplicationController
  def new
  end

  def show
  	# 0 = ROCK, 1 = PAPER, 2 = SCISSORS

  	@user_throw = params[:id].to_i
  	@throw_array = ["rock", "paper", "scissors"]
  	@computer_throw = rand(0..2)
  	
  	if @user_throw == @computer_throw
  		@game_partial = "tie"
	elsif ((@user_throw == 0 && @computer_throw == 2) || (@user_throw == 2 &&  @computer_throw == 1) || (@user_throw == 1 && @computer_throw == 0))
		@game_partial = "win"
	elsif ((@user_throw == 2 && @computer_throw == 0) || (@user_throw == 1 &&  @computer_throw == 2) || (@user_throw == 0 && @computer_throw == 1))
		@game_partial = "lose"
	end

  end
end
