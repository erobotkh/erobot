class Social < ApplicationRecord
  belongs_to :connectable, polymorphic: true
  belongs_to :social_type
  
  def launch_url
    social_type.launch_strategy.gsub("{}", username)
  end

  def identifier
    launch_url
  end
end
