class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true,
                       uniqueness: { case_sensitive: false }
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    email: true

  def self.find_by_login(login)
    where('lower(email) = :login OR lower(username) = :login',
          { login: login.downcase }).first
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
