class Member < ApplicationRecord
  belongs_to :team
  belongs_to :user, optional: true

  has_many :socials, as: :connectable, dependent: :destroy
  has_many :timelines

  def identifier
    name = first_name + " " + last_name
    name.strip
  end
end
