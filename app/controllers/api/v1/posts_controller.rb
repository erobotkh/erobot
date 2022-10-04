module Api
  module V1 
    class PostsController < Api::V1::ResourceController
      skip_before_action :doorkeeper_authorize!

      def collection
        Post.page(page)
      end

      def collection_serializer
        Api::V1::PostSerializer
      end

      def resource
        Post.find(params[:id])
      end

      def resource_serializer
        Api::V1::PostSerializer
      end
    end
  end
end