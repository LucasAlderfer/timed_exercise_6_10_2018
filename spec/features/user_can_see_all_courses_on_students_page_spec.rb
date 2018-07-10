require 'rails_helper'

describe 'when visiting /students/:id' do
  context 'as a user' do
    xit "shows all the student's courses" do
      student_1 = Student.create!(name:'billy')
      course_1 = student_1.courses.create(title:'math')
      course_2 = student_1.courses.create(title:'science')
      course_3 = student_1.courses.create(title:'english')

      visit student_path(student_1)

      expect(page).to have_content(course_1.title)
      expect(page).to have_content(course_2.title)
      expect(page).to have_content(course_3.title)
    end
  end
end
