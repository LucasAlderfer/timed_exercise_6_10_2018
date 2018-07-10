require 'rails_helper'

describe 'when visiting /students' do
  context 'as a user' do
    it 'can delete a new student' do
    student_1 = Student.create!(name:'joe')
    student_2 = Student.create!(name:'bobby')
    student_3 = Student.create!(name:'billy')

    visit students_path

    within "#student-#{student_1.id}" do
      click_on 'Delete'
    end
    expected = 'joe'

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(expected)
    end
  end
end
