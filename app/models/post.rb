class Post < ApplicationRecord
  has_many :classifications, dependent: :delete_all, inverse_of: :post
  has_many :taxons, through: :classifications, before_remove: :remove_taxon

  def remove_taxon(taxon)
    removed_classifications = classifications.where(taxon: taxon)
    removed_classifications.each &:remove_from_list
  end

  def identifier
    prefix = taxons.map(&:name).to_sentence
    [prefix, title].to_sentence
  end
end
