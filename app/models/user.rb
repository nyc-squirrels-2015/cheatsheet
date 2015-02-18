class User < ActiveRecord::Base
  has_secure_password
  has_many :categories
  has_many :formulas

  def self.authenticate(username, password)
    auth = User.find_by(username: username).try(:authenticate, password)
    auth
  end
end
