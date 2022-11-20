FactoryBot.define do
  factory :timeline do
    headline { "MyString" }
    description { "MyString" }
    type { "" }
    started_at { "2022-11-20 14:52:22" }
    ended_at { "2022-11-20 14:52:22" }
    member { nil }
    organization { nil }
  end
end
