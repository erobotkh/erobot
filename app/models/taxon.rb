class Taxon < ApplicationRecord
  belongs_to :parent
  belongs_to :taxonomy
  belongs_to :parent, class_name: :Taxon, optional: true

  has_many :taxons, foreign_key: :parent_id
  has_many :posts
end
