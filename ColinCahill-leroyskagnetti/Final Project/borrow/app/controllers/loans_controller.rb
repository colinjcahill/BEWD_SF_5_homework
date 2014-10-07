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
	@loan.item_id = params[:item_id]
	@loan.borrower_id = current_user.id
	@loan.lender_id = @loan.item.user_id
	@item = @loan.item

	 if @loan.save
      redirect_to [@item, @loan], notice: "Your loan request has been submitted.  You will be notified if the lender accepts your request."
    else
      render 'new'
    end
end

def edit

end

def update
	@loan = Loan.find(params[:id])
	
	if @loan.update(loan_params)
		redirect_to action: :index
	else 
		render :approve , alert: "yo couldn't  save !!"
	end
end

def approve 
	@loan = Loan.find(params[:id])
end

def destroy
end


def query_params
	params.permit(:category)
end

def loan_params
	params.require(:loan).permit(:owner_approved, :borrower_id, :lender_id, :item_id,:loan_begin, :loan_end, :borrower_score, :lender_score)
end

end
