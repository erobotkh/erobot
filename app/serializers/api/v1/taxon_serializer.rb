module Api
  module V1
    class TaxonSerializer < Api::V1::BaseSerializer
      attributes :name, :position

      belongs_to :parent, serializer: 'Taxon'
      belongs_to :taxonomy
    end
  end
end