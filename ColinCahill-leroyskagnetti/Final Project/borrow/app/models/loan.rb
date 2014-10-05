class Loan < ActiveRecord::Base

belongs_to :borrower, :class_name => "User"
belongs_to :lender, :class_name =>"User"     
belongs_to :item
has_many :reviews


# def approve 
# 	self.loan_begin = DateTime.now
# 	self.save
# end

end
