class Social < ApplicationRecord
  belongs_to :connectable, polymorphic: true
  belongs_to :social_type
end
