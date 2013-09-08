class Course < ActiveRecord::Base
  # To change this template use File | Settings | File Templates.
  belongs_to :user
  validates :name, :presence => true
end