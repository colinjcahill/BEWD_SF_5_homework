class RockPaperScissorsController < ApplicationController
  def index
  end

  def show
     tie = false
    @throws = ["rock", "paper", "scissors"]
    user_throw = @throws[params[:id]]
    comp_throw = @throws.sample

    if user_throw = comp_throw
      tie == true
      win == false
    elsif user_throw == "paper" && comp_throw == "scissors"
      win == false
    elsif user_throw == "rock" && comp_throw == "scissors"
      win == true
  elsif user_throw == "paper" && comp_throw == "rock"
      win == true
  elsif user_throw == "rock" && comp_throw == "paper"
      win == false
  elsif user_throw == "scissors" && comp_throw == "rock"
      win == false
  else #user_throw == "scissors" && comp_throw == "paper"
      win == true
  end
  end

  def new
end
end
