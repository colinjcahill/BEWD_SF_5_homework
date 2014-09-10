class RockPaperScissorsController < ApplicationController
  def new
  	@options = [{name: "Rock", number: 0}, {name: "Paper", number: 1},{name: "Scissors", number: 2}]

  end

  def show
  	@computer_choice = rand(0..2)
  	@player_choice = params[:id].to_i
  	@player_won = (@player_choice )

  end

 
  private 
  def calculate_winner(player, computer)
  	Rock
  end
  		
end
