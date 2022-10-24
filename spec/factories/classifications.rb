FactoryBot.define do
  factory :classification do
    post_id { 1 }
    taxon_id { 1 }
    position { 1 }
    preference { "" }
  end
end
