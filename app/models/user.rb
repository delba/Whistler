class User < ActiveRecord::Base
	attr_accessible :username, :first_name, :last_name, :email, :password, :password_confirmation

	def full_name
		"#{first_name} #{last_name}" 
	end
end