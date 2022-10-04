FactoryBot.define do
  factory :post do
    title { "MyString" }
    plain_body { "MyText" }
    rich_body { "MyText" }
    taxon { nil }
  end
end
