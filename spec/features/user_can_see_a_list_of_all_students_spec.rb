require 'rails_helper'

describe 'when visiting /students' do
  context 'as a user' do
    it 'shows all the students' do
      student_1 = Student.create!(name:'billy')
      student_2 = Student.create!(name:'bobby')
      student_3 = Student.create!(name:'joe')

      visit students_path

      expect(page).to have_content(student_1.name)
      expect(page).to have_content(student_2.name)
      expect(page).to have_content(student_3.name)
    end
  end
end
