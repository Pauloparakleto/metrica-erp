FactoryBot.define do
  factory :product do
    name { FFaker::Internet.slug }
    price { 10.80 }
    bar_code { "MyString" }
    active { true }
    sku { "MyString" }
    extra_sku { "MyString" }
    highlight { false }
    association :account
    association :category
  end
end
