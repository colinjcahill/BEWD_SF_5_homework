class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
		 :recoverable, :rememberable, :trackable, :validatable

  has_many :items
  has_many :reviews

  def pending_loan_count
		Loan.where(owner_approved: nil , lender_id: self.id).count
	end
  

	def full_address
		address = [self.address_1, self.address_2, self.city, self.state, self.postal_code, self.country == 'USA' ? nil : self.country]
		address.compact.join(', ')
	end

end
