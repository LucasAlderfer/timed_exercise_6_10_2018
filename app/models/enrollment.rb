class Enrollment < ApplicationRecord
  validates_presence_of(:student_id, :course_id)
  belongs_to :student
  belongs_to :course
end
