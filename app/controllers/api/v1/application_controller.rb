module Api
  module V1
    class ApplicationController < ActionController::API
      before_action :doorkeeper_authorize!
      
      private
      def current_user
        @current_user ||= User.find_by(id: doorkeeper_token[:resource_owner_id])
      end

      def page
        params[:page] || 1
      end
    end
  end
end  