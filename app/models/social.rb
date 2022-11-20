class Social < ApplicationRecord
  belongs_to :connectable, polymorphic: true
  belongs_to :social_type
  
  def launch_url
    self.social_type.launch_strategy.gsub("{}", self.username)
  end

  def identifier
    launch_url
  end
end
