class Timeline < ApplicationRecord
  belongs_to :member
  belongs_to :organization

  enum :timeline_type, [ :experience, :education, :volunteer ]
end
