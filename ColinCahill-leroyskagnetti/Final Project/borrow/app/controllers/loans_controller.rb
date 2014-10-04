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
	@loan = Loan.new
end

def show
	render :text => Loan.find(params[:id]).borrower_id
end


def create 
end

def edit

end

def update

end

def approve 
	@loan = Loan.find(params[:id])
	# @loan.approve
end

def destroy
end

private 

def query_params
	params.permit(:category)
end

def loan_params
	params.require(:loan).permit(:borrow)
end

end
