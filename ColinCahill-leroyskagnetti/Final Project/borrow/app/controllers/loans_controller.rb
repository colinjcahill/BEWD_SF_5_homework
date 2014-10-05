class LoansController < ApplicationController
before_action :authenticate_user!

def index
	
	if query_params[:category] == 'borrowed'
		@loans = Loan.where(borrower_id = current_user.id)
	
	elsif query_params[:category] == 'loaned' 
		@loans = Loan.where(lender_id = current_user.id)

	else
		@loans = Loan.where('lender_id= ? or borrower_id= ?' , current_user.id , current_user.id)
	end
		
end

def new
	@loan = Loan.new(item_id: params[:item_id])

end

def show
	@loan = Loan.find(params[:id])
end


def create
	@loan = Loan.new(loan_params)
	 if @loan.save
      redirect_to @loan, notice: "Your loan request has been submitted.  You will be notified if the lender accepts your request."
    else
      render 'new'
    end

end

def edit

end

def update

end

# def approve 
# 	@loan = Loan.find(params[:id])
# 	# @loan.approve
# end

def destroy
end

private 

def query_params
	params.permit(:category)
end

def loan_params
	params.require(:loan).permit(:borrower_id, :lender_id, :item_id,:loan_begin, :loan_end)
end

end
