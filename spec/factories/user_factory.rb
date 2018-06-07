FactoryBot.define do
  sequence(:email) { |n| "user#{n}@gmail.com" }

  factory :user do
    email 
    password "test123"
    first_name "Patrick"
    last_name "Krell"
    admin false
  end 

  factory :admin, class: User do
    email 
    password "test123"
    admin true
    first_name "Patrick"
    last_name "Krell"
  end 

end