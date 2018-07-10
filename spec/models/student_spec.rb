require 'rails_helper'

describe Student, type: :model do
  describe 'validations' do
    it {should validate_prescence_of(:name)}
  end
end
