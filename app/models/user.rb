class User < ActiveRecord::Base
  validates :username, presence: true,
                       uniqueness: { case_sensitive: false }

  def full_name
    "#{first_name} #{last_name}"
  end
end
