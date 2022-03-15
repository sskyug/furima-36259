FactoryBot.define do
  factory :item do
    items_name          { Faker::Commerce.product_name }
    detail              { Faker::Lorem.sentence }
    category_id           { Faker::Number.between(from: 2, to: 11) }
    condition_id           { Faker::Number.between(from: 2, to: 7) }
    delivery_charge_id     { Faker::Number.between(from: 2, to: 3) }
    prefecture_id          { Faker::Number.between(from: 2, to: 48) }
    send_day_id            { Faker::Number.between(from: 2, to: 4) }
    price { Faker::Number.between(to: 9_999_999) }
    association :user
  end
end
