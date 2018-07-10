require 'rails_helper'

describe 'when visiting /students/:id' do
  context 'as a user' do
    it 'shows a student' do
      student_1 = Student.create!(name:'joe')
      expected = 'joe'

      visit student_path(student_1)

      expect(page).to have_content(expected)
    end
  end
end
