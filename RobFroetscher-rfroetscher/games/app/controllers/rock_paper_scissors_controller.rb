class RockPaperScissorsController < ApplicationController
  def new
  	@options = get_options
  end

  def show
  	@options = get_options
  	@computer_choice = rand(0..2)
  	@player_choice = params[:id].to_i
  	calculate_winner
  end


  private

  def calculate_winner
  	@options = get_options
  	game_result = rock_paper_scissors(@options[@player_choice][:name],@options[@computer_choice][:name])
  	if game_result == @options[@player_choice][:name]
  		@outcome = "win"
  	elsif game_result == @options[@computer_choice][:name]
  		@outcome = "lose"
  	else
  		@outcome = "tie"
  	end
  		
  end

  def get_options
   [{name: "Rock", number: 0},{name: "Paper", number: 1}, {name: "Scissors", number: 2}]
  end

  def rock_paper_scissors(choice_1, choice_2)
  	choicearray = [choice_1, choice_2]

  	if choicearray.include?("Rock") && choicearray.include?("Paper")
  		"Paper"
  	elsif choicearray.include?("Rock") && choicearray.include?("Scissors")
  		"Rock"
  	elsif choicearray.include?("Scissors") && choicearray.include?("Paper")
  		"Scissors"
  	elsif choicearray[1] == choicearray[2]
  		nil
  	end
  end
  		

end
