class Item < ActiveRecord::Base
  validates_presence_of :name, :category, :description, :value

belongs_to :category
belongs_to :user

after_validation :defaults

def defaults
	self.condition = 55
	self.image_path = "dog.jpeg"
end


  def condition_qual
  	if self.condition >= 90
  		"Excellent"
	elsif self.condition >= 75 && self.condition <= 89
		"Good"
	elsif self.condition >= 55 && self.condition < 75
		"Fair"
	elsif self.condition >= 40 && self.condition < 55
		"Worn"
	elsif self.condition < 40
		"Very Worn"
	end
  end

  def tags_array
  	if self.tags.nil?
  		nil
  	else
  	self.tags.downcase.split(',')
  	end
  end

end
