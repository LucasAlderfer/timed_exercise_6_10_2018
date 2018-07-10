require 'rails_helper'

describe 'when visiting /students/new' do
  context 'as a user' do
    it 'can create a new student' do
    visit new_student_path

    fill_in 'student[name]', with: 'joe'
    click_on 'Create'
    expected = 'joe'

    expect(current_path).to eq(student_path(Student.last))
    expect(page).to have_content(expected)
    end
  end
end
