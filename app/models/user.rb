class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  has_many :courses
  validates :name, :presence => true, :uniqueness => true, :length => {:minimum => 4, :maximum => 16}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, :presence => true, :uniqueness => { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  validates :password, length: { minimum: 6, maximum: 16 }
end


