module Api
  module V1
    class CommentSerializer < Api::V1::BaseSerializer
      set_type :comment

      attributes :message

      has_one :user
    end
  end
end