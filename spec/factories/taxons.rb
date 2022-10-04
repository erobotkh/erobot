FactoryBot.define do
  factory :taxon do
    name { "MyString" }
    position { 1 }
    parent { nil }
    taxonomy { nil }
  end
end
