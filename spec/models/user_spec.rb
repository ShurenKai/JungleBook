require 'rails_helper'

RSpec.describe User, type: :model do
  subject {User.create(first_name:"Sasuke", last_name:"Uchiiihaw", email:"TEST@TEST.ca", password:"password101111111")}

  describe 'Validations' do
    it 'should be unique' do
      @user0 = subject
      @user1 = User.create(first_name:"Alpaca", last_name:"Blancr", email:"test@test.ca", password:"textme0110textme")
      expect(@user1).to_not be_valid
    end
    it 'should have a password with a length of 5 or over' do
      @user1 = User.create(first_name:"Alpaca", last_name:"Blancr", email:"test@text.ca", password:"val")
      expect(@user1).to_not be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    it 'should return nil if wrong password' do
      @user3 = subject
      @user3 = User.authenticate_with_credentials("TEST@TEST.ca", "passwor1111")
      expect(@user3).to eq(nil)
    end

    it 'should login despite email casing' do
      @user4 = User.create(first_name: "Alpaca", last_name: "Blancr", email: "TEST@text.ca", password: "valueable")
      @user4 = User.authenticate_with_credentials("test@text.ca", "valueable")
      expect(@user4).should_not eq(nil)
    end

    it 'should login despite spacing' do
      @user4 = User.create(first_name: "Alpaca", last_name: "Blancr", email: "TEST@text.ca", password: "valueable")
      @user4 = User.authenticate_with_credentials(" test@text.ca ", "valueable")
      expect(@user4).should_not eq(nil)
    end
  end
end
