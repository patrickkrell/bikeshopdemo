FactoryBot.define do
  factory :comment do
    user_id 1
    body 'Test comment'
    rating 4
  end

  factory :product do
    name "Test Bike"
    description "Best Bike"
    image_url "bike1.jpg"
    colour "white"
    price "1200"
  end
end