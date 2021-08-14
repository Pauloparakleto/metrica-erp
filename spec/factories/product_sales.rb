FactoryBot.define do
  factory :sale_product do
    quantity {30}
    value {100}

    association :sale
    association :account
    association :product
  end
end