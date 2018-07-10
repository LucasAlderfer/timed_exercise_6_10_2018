class Course < ApplicationRecord
  validates_presence_of(:title)
  has_many :students
end
