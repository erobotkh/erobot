module Api
  module V1 
    class TaxonsController < Api::V1::ResourceController
      skip_before_action :doorkeeper_authorize!

      def collection
        Taxon.page(page)
      end

      def collection_serializer
        Api::V1::TaxonSerializer
      end

      def resource
        Taxon.find(params[:id])
      end

      def resource_serializer
        Api::V1::TaxonSerializer
      end
    end
  end
end