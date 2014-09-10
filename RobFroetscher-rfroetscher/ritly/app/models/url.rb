class Url < ActiveRecord::Base
	def generate_code
		self.code = SecureRandom.hex(13)
	end
end
