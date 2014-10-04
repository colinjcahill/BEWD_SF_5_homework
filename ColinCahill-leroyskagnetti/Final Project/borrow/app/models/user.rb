class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :items
  has_many :reviews
  

	def full_address
		self.address_1.to_s + ', ' + self.address_2.to_s + ', ' + self.city.to_s + ', ' + self.state.to_s + ', ' + self.postal_code.to_s
	end

end
