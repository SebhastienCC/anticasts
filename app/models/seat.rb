class Seat < ApplicationRecord
  validates :course_id, :user_id, presence: true
  validates_uniqueness_of :user_id, :scope => :course_id

  belongs_to :user
  belongs_to :course
end
