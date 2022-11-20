class Organization < ApplicationRecord
  has_many :socials, as: :connectable, dependent: :destroy
end
