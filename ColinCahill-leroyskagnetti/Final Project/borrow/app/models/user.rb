class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
		 :recoverable, :rememberable, :trackable, :validatable

  has_many :items
  has_many :reviews


  def borrower_loans
  	Loan.where(borrower_id: self.id)
  end

  def loaner_loans
  	Loan.where(lender_id: self.id)
  end

  def pending_loans?
  	pending_loans.size > 0
  end

  def pending_loans
  	Loan.where(owner_approved: nil , lender_id: self.id)
  end

  def pending_loan_count
		Loan.where(owner_approved: nil , lender_id: self.id).count
	end
  

	def full_address
		address = [self.address_1, self.address_2, self.city, self.state, self.postal_code, self.country == 'USA' ? nil : self.country]
		address.delete_if(&:blank?).join(', ')
	end

end
