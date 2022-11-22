Rails.application.routes.draw do
  scope :module => 'frontend' do
    get 'home/index'
  end
end
