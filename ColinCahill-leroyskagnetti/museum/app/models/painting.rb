class Painting < ActiveRecord::Base
	belongs_to :artist
	belongs_to :ArtMuseum

	def self.search(query)
		where('title LIKE :search_term OR :artist_name LIKE :search_term', :search_term => "%#{query}%", :artist_name => self.artist)
	end

	def artist
		Artist.find(self.artist_id).name
	end


	def art_museum
		ArtMuseum.find(self.art_museum_id).name
	end

end
