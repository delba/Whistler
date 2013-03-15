class User < ActiveRecord::Base
  validates :username, unique: true

	def full_name
		"#{first_name} #{last_name}" 
	end
end
