class User < ActiveRecord::Base
  validates :username, presence: true,
                       uniqueness: true

  def full_name
    "#{first_name} #{last_name}" 
  end
end
