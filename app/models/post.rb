class Post < ApplicationRecord
  belongs_to :taxonomy, inverse_of: :taxons
  has_many :taxons
end
