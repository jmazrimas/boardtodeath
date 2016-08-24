require 'rails_helper'

describe User do
  let(:user) { User.create(username: 'test', email: 'test@user.com', password: 'password') }

  describe "A user" do

    it "has a username" do
      expect(user.username).to eq 'test'
    end

    it "has an email" do
      expect(user.email).to eq 'test@user.com'
    end

    it "has a password" do
      expect(user.password == 'password').to eq true
    end

  end


end
