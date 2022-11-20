class Taxon < ApplicationRecord
  belongs_to :taxonomy, inverse_of: :taxons
  belongs_to :parent, class_name: 'Taxon', optional: true
  
  has_many :classifications, dependent: :delete_all, inverse_of: :taxon
  has_many :posts, through: :classifications
end
