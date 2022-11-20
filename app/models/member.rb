class Member < ApplicationRecord
  belongs_to :team
  belongs_to :user

  has_many :socials, as: :connectable
end
