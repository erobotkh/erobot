module Api
  module V1
    class UserSerializer < Api::V1::BaseSerializer
      set_type :user

      attributes :email
    end
  end
end