class Taxonomy < ApplicationRecord
  has_many :taxons, inverse_of: :taxonomy
end
