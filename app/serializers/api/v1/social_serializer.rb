module Api
  module V1
    class SocialSerializer < Api::V1::BaseSerializer
      attributes :username

      attribute :first_name do | social |
        social.first_name
      end

      attribute :last_name do | social |
        social.last_name
      end

      attribute :social_type do | social |
        social.social_type.name
      end

      attribute :launch_url do | social |
        social.launch_url
      end
    end
  end
end