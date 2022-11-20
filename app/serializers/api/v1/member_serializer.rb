module Api
  module V1
    class MemberSerializer < Api::V1::BaseSerializer
      # attributes :name

      attribute :first_name do | member |
        member.first_name || member.user.first_name
      end

      attribute :last_name do | member |
        member.last_name || member.user.last_name
      end

      has_one :team
      has_many :socials
    end
  end
end