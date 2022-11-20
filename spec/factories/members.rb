FactoryBot.define do
  factory :member do
    first_name { "MyString" }
    last_name { "MyString" }
    team { nil }
    user { nil }
  end
end
