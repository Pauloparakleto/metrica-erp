FactoryBot.define do
  factory :sale do
    value { 20.00 }
    discount { nil }
    percentage { nil }
    online { nil }
    disclosure { nil }
    order_code { nil }
    association :customer
    association :account
  end
end