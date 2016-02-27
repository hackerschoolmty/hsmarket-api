FactoryGirl.define do
  factory :user do
    email                 { FFaker::Internet.email }
    password              { 'changeme' }
    password_confirmation { 'changeme' }
    username              { SecureRandom.hex(2) }
  end
end
