module Api
  module V1 
    class TimelinesController < Api::V1::ResourceController
      skip_before_action :doorkeeper_authorize!

      def collection
        Timeline.where(member_id: member_id).page(page)
      end

      def collection_serializer
        Api::V1::TimelineSerializer
      end

      def member_id
        params['member_id']
      end
    end
  end
end