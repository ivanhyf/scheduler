class User < ActiveRecord::Base
  # To change this template use File | Settings | File Templates.
  has_many :courses
  validates :name, :presence => true#, :length => {:minimum => 4, :maximum => 16}, :uniqueness => true
  validates :password, :presence => true#, :length => {:minimum => 4, :maximum => 16}, :confirmation => true
  #validates :email, :presence => true,
end