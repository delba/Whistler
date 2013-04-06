class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true,
                       uniqueness: { case_sensitive: false }
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    email: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
