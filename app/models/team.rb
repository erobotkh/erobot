class Team < ApplicationRecord
  belongs_to :parent, class_name: 'Team', optional: true

  has_many :socials, as: :connectable, dependent: :destroy
end
