module Api
  module V1
    class TimelineSerializer < Api::V1::BaseSerializer
      attributes :headline, :description, :timeline_type, :started_at, :ended_at

      belongs_to :organization
      belongs_to :member
    end
  end
end