module Api
  module V1
    class OrganizationSerializer < Api::V1::BaseSerializer
      attributes :name, :description, :type

      has_many :socials
    end
  end
end