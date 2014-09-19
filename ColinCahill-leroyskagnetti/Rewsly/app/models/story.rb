class Story < ActiveRecord::Base
  validates_presence_of :title, :category, :upvotes, :link
  validates :title, length: { minimum: 10, message: "Your title is too short.  Please enter a longer title message" }
  validates :upvotes, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  
  def self.search_for(query)                                                       
    where('title LIKE :query OR category LIKE :query', :query => "%#{query}%") 
  end 
end


