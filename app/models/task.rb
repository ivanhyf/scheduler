class Task < ActiveRecord::Base
  belongs_to :course
  validates :name, :presence => true
  validates :time, :presence => true

end
