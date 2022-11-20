module Api
  module V1
    class TimelineSerializer < Api::V1::BaseSerializer
      attributes :headline, :description, :type, :started_at, :ended_at

      belongs_to :organization
    end
  end
end