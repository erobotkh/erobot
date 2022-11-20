class Member < ApplicationRecord
  belongs_to :team
  belongs_to :user, optional: true

  has_many :socials, as: :connectable, dependent: :destroy
  has_many :timelines
end
