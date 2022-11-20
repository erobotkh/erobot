module Api
  module V1
    class TeamSerializer < Api::V1::BaseSerializer
      attributes :name, :description, :position

      belongs_to :parent, serializer: 'Team'

      has_many :socials
    end
  end
end