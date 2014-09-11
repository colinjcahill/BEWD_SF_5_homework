class Story < ActiveRecord::Base
	validates :title, presence: true
	validates :link, presence: true
	validates :upvotes, numericality: true
	validates :category, presence: true

end
