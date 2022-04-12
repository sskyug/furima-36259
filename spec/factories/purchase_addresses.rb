FactoryBot.define do
  factory :purchase_address do
    post_code                 { "000-0000" }
    telephone_number          { "1234567890"}
    municipalities            { Faker::Address.name }
    address                   { Faker::Address.street_address }
    building_name             { "sample"}
    prefecture_id             { Faker::Number.between(from: 2, to: 48) }
    association :item
    association :user
  end
end
