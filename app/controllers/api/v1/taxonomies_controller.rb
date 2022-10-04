module Api
  module V1 
    class TaxonomiesController < Api::V1::ResourceController
      skip_before_action :doorkeeper_authorize!

      def collection
        Taxonomy.page(page)
      end

      def collection_serializer
        Api::V1::TaxonomySerializer
      end

      def resource
        Taxonomy.find(params[:id])
      end

      def resource_serializer
        Api::V1::TaxonomySerializer
      end
    end
  end
end