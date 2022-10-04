module Api
  module V1
    class TaxonomySerializer < Api::V1::BaseSerializer
      attributes :name, :taxonomy_type, :position
    end
  end
end