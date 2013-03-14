class User < ActiveRecord::Base
	attr_accessible :username, :first_name, :last_name, :email, :password, :password_confirmation
end