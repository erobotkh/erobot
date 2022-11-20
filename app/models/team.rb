class Team < ApplicationRecord
  belongs_to :parent, class_name: 'Team', optional: true
end
