module Api
  module V1
    class SocialTypeSerializer < Api::V1::BaseSerializer
      attributes :name

      attribute :url do | social |
        social.launch_strategy
      end
    end
  end
end