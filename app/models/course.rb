class Course < ApplicationRecord
  has_many :lessons
  has_many :seats
  has_many :sections
end
