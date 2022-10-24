class Classification < ApplicationRecord
  acts_as_list scope: :taxon

  with_options inverse_of: :classifications, touch: true do
    belongs_to :post
    belongs_to :taxon
  end

  validates :taxon, :post, presence: true
  validates :taxon_id, uniqueness: { scope: :post_id, message: :already_linked, allow_blank: true }
end
