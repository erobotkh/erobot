class Taxonomy < ApplicationRecord
  has_many :taxons, foreign_key: :parent_id
end
