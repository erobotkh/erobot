module Api
  module V1
    class PostSerializer < Api::V1::BaseSerializer
      set_type :post

      attributes :title, :plain_body, :rich_body
      
      has_many :taxons
    end
  end
end