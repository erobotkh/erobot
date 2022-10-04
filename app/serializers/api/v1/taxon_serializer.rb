module Api
  module V1
    class TaxonSerializer < Api::V1::BaseSerializer
      attributes :name, :position, :position
      
      belongs_to :taxon
      belongs_to :taxonomy
    end
  end
end