require 'rails_helper'

describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :password }
  end

  describe "roles" do
    it "can be creat user" do
      user = create(:user)
      user2 = create(:user, email: "new.com")
      binding.pry
    end

  end

end
