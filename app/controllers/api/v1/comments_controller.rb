module Api
  module V1 
    class CommentsController < Api::V1::ResourceController
      skip_before_action :doorkeeper_authorize!
      before_action :required_params

      def collection
        Comment.where(commentable_id: params[:id], commentable_type: params[:type].capitalize).page(page)
      end

      def collection_serializer
        Api::V1::CommentSerializer
      end

      def resource_serializer
        Api::V1::CommentSerializer
      end

      private
      def required_params
        params.require('id')
        params.require('type')
      end
    end
  end
end