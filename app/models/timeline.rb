class Timeline < ApplicationRecord
  belongs_to :member
  belongs_to :organization

  enum :type, [ :experience, :education, :volunteer ]
end
