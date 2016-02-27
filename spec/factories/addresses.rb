FactoryGirl.define do
  factory :address do
    street        { FFaker::Address.street_name }
    street_number { FFaker::Address.building_number }
    suite         { FFaker::Address.secondary_address }
    neighbourhood { FFaker::Address.neighborhood }
    municipality  { FFaker::AddressMX.municipality }
    state         { FFaker::AddressMX.state }
    country       { 'MX' }
    zipcode       { FFaker::AddressMX.zip_code }
    latitude      { FFaker::Geolocation.lat }
    longitude     { FFaker::Geolocation.lng }
    name          { "#{FFaker::Company.name} tower" }
  end
end
