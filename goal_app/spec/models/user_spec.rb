require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password_digest)}  
  it {should validate_presence_of(:session_token)}  

  it {should validate_uniqueness_of(:session_token)}

  it { should validate_uniqueness_of(:username) }
  subject(:toby) { User.create(
      username: 'toby', 
      password: 'password'
    ) 
  }

  describe 'session_token' do
    it 'assigns a session token to the user if none given' do
      expect(FactoryBot.build(:user).session_token).not_to be_nil
    end
  end

  describe 'reset_session_token' do
    it 'resets session token if it already exists' do
      expect(FactoryBot.build(:existing_user).session_token).not_to eq(FactoryBot.build(:existing_user).session_token)
    end
  end

  describe 'encrypts password' do
    it 'encrypts password into password_digest' do
      expect(FactoryBot.build(:user).password_digest).not_to be_nil
    end
  end

end
