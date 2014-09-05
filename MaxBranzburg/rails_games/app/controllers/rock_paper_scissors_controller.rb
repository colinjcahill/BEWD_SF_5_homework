class RockPaperScissorsController < ApplicationController
  def new
  	@throws = ["Rock", "Paper", "Scissors"]
  end

  def show
  	@throws = ["Rock", "Paper", "Scissors"]
  	@user_throw = @throws[params[:id].to_i]
  	@comp_throw = @throws.sample
  	@result = get_results(@user_throw, @comp_throw)
  end

  def get_results(user_throw, comp_throw)
  	if @user_throw == @comp_throw
  		'tie'
  	elsif @user_throw == "Rock" && @comp_throw == "Paper"
  		'lose'
   	elsif @user_throw == "Rock" && @comp_throw == "Scissors"
  		'win'
  	elsif @user_throw == "Paper" && @comp_throw == "Scissors"
  		'lose'
   	elsif @user_throw == "Paper" && @comp_throw == "Rock"
  		'win'
  	elsif @user_throw == "Scissors" && @comp_throw == "Rock"
  		'lose'
   	elsif @user_throw == "Scissors" && @comp_throw == "Paper"
  		'win'
  	end
  end

end
