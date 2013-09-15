class Course < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :name, :presence => true
  validates :user_id, :presence => true
  has_many :tasks
end
