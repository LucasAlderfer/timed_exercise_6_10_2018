require 'rails_helper'

describe Course, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
  end

  describe 'relationships' do
    xit {should have_many :students}
  end
end
