class Review < ActiveRecord::Base
	
	belongs_to :loan
	belongs_to :author, :class_name =>"User"  
	
end
