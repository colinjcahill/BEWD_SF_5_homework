class Loan < ActiveRecord::Base
	# validates_presence_of :borrower_id, :lender_id, :item_id

belongs_to :borrower, :class_name => "User"
belongs_to :lender, :class_name =>"User"     
belongs_to :item
has_many :reviews

def status
	if self.owner_approved == true
		"Approved"
	elsif
		self.owner_approved == false
		"Not Approved"
	elsif 
		self.owner_approved == nil
		"Pending"
	end
end

def period
	self.loan_begin..self.loan_end
end

def expired?
	if period.cover?(DateTime.now)
		false
	else
		true
	end
end



end
