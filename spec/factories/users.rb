FactoryGirl.define do
  factory :user do
    name 'Test Testerston'
    email 'example@example.com'
    password 'changeme'
    password_confirmation 'changeme'
    confirmed_at Time.now
  end
end