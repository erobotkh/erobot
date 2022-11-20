module Api
  module V1 
    class MembersController < Api::V1::ResourceController
      skip_before_action :doorkeeper_authorize!

      def collection
        Member.page(page)
      end

      def collection_serializer
        Api::V1::MemberSerializer
      end

      def resource
        Member.find(params[:id])
      end

      def resource_serializer
        Api::V1::MemberSerializer
      end
    end
  end
end