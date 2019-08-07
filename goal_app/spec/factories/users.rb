FactoryBot.define do
  factory :user do
    
    username { 'test_user1' }
    password { 'password123' }
    
    factory :invalid_user do
      password { '' }
    end

    factory :existing_user do 
      session_token { 'fkawnfweklj.dAOIYIQ@U#Y#H@KJBmdl;fsdfdl;qe2' }
    end

  end
end
