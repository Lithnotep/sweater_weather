require 'rails_helper'

describe User, type: :model do
  describe "validations" do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :password }
    it { should validate_uniqueness_of :api_key }
  end

  describe "roles" do
    it "can be creat user" do
      user = create(:user)
      user2 = create(:user, email: "new.com")
      expect(user.email).to eq("test.com")
      expect(user2.email).to eq("new.com")
    end

  end

end
