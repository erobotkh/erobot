class Taxon < ApplicationRecord
  belongs_to :taxonomy, inverse_of: :taxons
  
  has_many :classifications, dependent: :delete_all, inverse_of: :taxon
  has_many :posts, through: :classifications
end
