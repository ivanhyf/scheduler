class User < ActiveRecord::Base
  has_many :courses
  validates :name, :presence => true, :uniqueness => true, :length => {:minimum => 4, :maximum => 16}
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true, :length => {:minimum => 4, :maximum => 16}
end
