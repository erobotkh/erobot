# Credit to @SPREE_API
module Api
  module V1
    class ResourceController < Api::V1::ApplicationController
      include Api::V1::CollectionOptionsHelpers
      include Api::V1::RequestIncludesHelpers
      
      # resource
      def show
        json = resource_serializer.new(
          resource,
          include: resource_includes,
          # fields: sparse_fields
        ).serializable_hash

        render json: json
      end
      
      # collections
      def index
        json = collection_serializer.new(collection, collection_options(collection)).serializable_hash
        render json: json
      end

      protected
      def resource
      end

      def resource_serializer
      end


      def collection
      end

      def collection_serializer
      end
    end
  end
end