class Organization < ApplicationRecord
  has_many :socials, as: :connectable, dependent: :destroy
  belongs_to :parent, class_name: 'Organization', optional: true
end
