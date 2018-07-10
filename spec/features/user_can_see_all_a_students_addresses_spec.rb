require 'rails_helper'

describe 'when visiting /students/:id' do
  context 'as a user' do
    it "shows all the student's addresses" do
      student_1 = Student.create!(name:'billy')
      address_1 = student_1.addresses.create(description: 'home', street: 'new', city: 'denver', state: 'va', zip_code: '876876')
      address_2 = student_1.addresses.create(description: 'another home', street: 'next', city: 'washington', state: 'co', zip_code: '344334')
      address_3 = student_1.addresses.create(description: 'a final home', street: 'never', city: 'nyc', state: 'ny', zip_code: '5554545s')

      visit student_path(student_1)

      expect(page).to have_content(address_1.description)
      expect(page).to have_content(address_1.street)
      expect(page).to have_content(address_1.city)
      expect(page).to have_content(address_1.state)
      expect(page).to have_content(address_1.zip_code)
      expect(page).to have_content(address_2.description)
      expect(page).to have_content(address_2.street)
      expect(page).to have_content(address_2.city)
      expect(page).to have_content(address_2.state)
      expect(page).to have_content(address_2.zip_code)
      expect(page).to have_content(address_3.description)
      expect(page).to have_content(address_3.street)
      expect(page).to have_content(address_3.city)
      expect(page).to have_content(address_3.state)
      expect(page).to have_content(address_3.zip_code)
    end
  end
end
