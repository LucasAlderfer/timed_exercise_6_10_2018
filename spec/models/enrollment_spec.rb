require 'rails_helper'

describe Enrollment, type: :model do
  describe 'validations' do
    xit {should validate_presence_of(:student_id, :course_id)}
  end

  describe 'relationships' do
    xit {should belong_to :student}
    xit {should belong_to :course}
  end
end
