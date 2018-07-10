require 'rails_helper'

describe 'when visiting /students/:id/edit' do
  context 'as a user' do
    it 'can edit a student' do
    student_1 = Student.create!(name:'joe')
    visit edit_student_path(student_1)

    fill_in 'student[name]', with: 'joeline'
    click_on 'Create'
    expected = 'joeline'

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content(expected)
    end
  end
end
