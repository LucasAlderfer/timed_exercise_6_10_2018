require 'rails_helper'

describe 'when visiting any page' do
  context 'as a user on /students' do
    it 'can click a link to /students or /students/new' do
      visit students_path

      within "#Nav-Bar" do
        click_link 'Students'
      end

      expect(current_path).to eq(students_path)

      within "#Nav-Bar" do
        click_link 'New Student'
      end

      expect(current_path).to eq(new_student_path)
    end
  end
  context 'as a user on /students/new' do
    it 'can click a link to /students or /students/new' do
      visit new_student_path

      within "#Nav-Bar" do
        click_link 'Students'
      end

      expect(current_path).to eq(students_path)

      within "#Nav-Bar" do
        click_link 'New Student'
      end

      expect(current_path).to eq(new_student_path)
    end
  end
  context 'as a user on /students/:id/edit' do
    it 'can click a link to /students or /students/new' do
      student_1 = Student.create!(name:'joe')
      student_2 = Student.create!(name:'bobby')
      student_3 = Student.create!(name:'billy')
      visit edit_student_path(student_2)

      within "#Nav-Bar" do
        click_link 'Students'
      end

      expect(current_path).to eq(students_path)

      within "#Nav-Bar" do
        click_link 'New Student'
      end

      expect(current_path).to eq(new_student_path)
    end
  end
  context 'as a user on /students/:id' do
    it 'can click a link to /students or /students/new' do
      student_1 = Student.create!(name:'joe')
      student_2 = Student.create!(name:'bobby')
      student_3 = Student.create!(name:'billy')
      visit student_path(student_3)

      within "#Nav-Bar" do
        click_link 'Students'
      end

      expect(current_path).to eq(students_path)

      within "#Nav-Bar" do
        click_link 'New Student'
      end

      expect(current_path).to eq(new_student_path)
    end
  end
end
