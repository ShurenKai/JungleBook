class User < ActiveRecord::Base
  validates :email, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { minimum: 5 }, presence: true 
  validates :password_confirmation, presence: true 
  has_secure_password


  def self.authenticate_with_credentials (email, password)
    user_found = nil
    email_two = email.strip
    user_found = User.where('lower(email) = ?', email_two.downcase).first
    if user_found && user_found.authenticate(password)
      return user_found
    end
    return user_found
  end
end