FactoryBot.define do
  factory :customer do
    name {"String"}
    email {"String"}
    cellphone {"String"}
    phone {"String"}
    cpf {"String"}
    association :account
  end
end