class Item < ActiveRecord::Base
  validates_presence_of :name, :category, :description, :value, :deterioration


  def tags_array
  	self.tags.split(',')
  end

  def condition
  	if self.deterioration <= 10
  		"Excellent"
	elsif self.deterioration > 10 && self.deterioration <= 25
		"Good"
	elsif self.deterioration > 25 && self.deterioration <= 45
		"Fair"
	elsif self.deterioration > 45 && self.deterioration <= 65
		"Worn"
	elsif self.deterioration > 65
		"Very Worn"
	end
  end

end
