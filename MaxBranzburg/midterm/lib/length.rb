# Gets users' maximum number of desired results and
# handles bad input.  If maximum number of desired
# results is not an integer, requires that user enter
# an integer to continue.  Returns 1 less than entered
# value to represent the maximum array index number to
# be accessed.

class Length
 
 attr_accessor :number_results
   
  def initialize
    @number_results = gets.chomp
  end

  def results_length

	while (@number_results.to_i.to_s != @number_results) || (@number_results.to_i <= 0) do
    	puts "Invalid search.  Please enter an integer greater than zero:"
    	@number_results = gets.chomp   	
	end

    @number_results.to_i - 1
    	
  end

end