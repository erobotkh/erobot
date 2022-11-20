module Api
  module V1 
    class TeamsController < Api::V1::ResourceController
      skip_before_action :doorkeeper_authorize!

      def collection
        Team.page(page)
      end

      def collection_serializer
        Api::V1::TeamSerializer
      end

      def resource
        Team.find(params[:id])
      end

      def resource_serializer
        Api::V1::TeamSerializer
      end
    end
  end
end