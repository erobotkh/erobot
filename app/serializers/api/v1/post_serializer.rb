module Api
  module V1
    class PostSerializer < Api::V1::BaseSerializer
      attributes :title, :plain_body, :rich_body

      has_many :taxons
      belongs_to :taxonomy
    end
  end
end