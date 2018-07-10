require 'rails_helper'

describe 'when visiting /students/:id/addresses/new' do
  context 'as a user' do
    it 'can create a new address' do
    student_1 = Student.create!(name:'joe')
    student_2 = Student.create!(name:'bobby')
    student_3 = Student.create!(name:'billy')

    visit new_student_address_path(student_1)

    fill_in 'address[description]', with: "joe's place"
    fill_in 'address[street]', with: "new street"
    fill_in 'address[city]', with: "joecity"
    fill_in 'address[state]', with: "Colorado"
    fill_in 'address[zip_code]', with: "80230"

    click_on 'Add Address'

    expected_1 = "joe's place"
    expected_2 = 'new street'
    expected_3 = 'joecity'
    expected_4 = 'Colorado'
    expected_5 = '80230'

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content(expected_1)
    expect(page).to have_content(expected_2)
    expect(page).to have_content(expected_3)
    expect(page).to have_content(expected_4)
    expect(page).to have_content(expected_5)
    end
  end
end
