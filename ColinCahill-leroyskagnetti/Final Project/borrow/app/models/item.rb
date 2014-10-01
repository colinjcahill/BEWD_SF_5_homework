class Item < ActiveRecord::Base
  validates_presence_of :name, :category, :description, :value, :category_id

belongs_to :category
belongs_to :user

before_validation :defaults

def defaults
	self.condition ||= 55
	self.image_path ||= "dog.jpeg"
	self.category_id ||=15
end


def condition_qual
	grades = {(90..100) =>"Excellent", (75..89)=>"Good", (55..74)=>"Fair", (40..54)=>"Worn", (0..39)=>"Very Worn"}

	grades.each do |quant_score, qual_grade|
		if quant_score === self.condition
			return qual_grade
			else
		end
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
