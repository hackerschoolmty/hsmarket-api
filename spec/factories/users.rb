FactoryGirl.define do
  factory :user do
    email                 { FFaker::Internet.email }
    password              { 'changeme' }
    password_confirmation { 'changeme' }
    username              { SecureRandom.hex(2) }
  end

  factory :client, parent: :user do
    after(:create) do |user|
      user.add_role :client
    end
  end

end
