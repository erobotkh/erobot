module Api
  module V1
    module RequestIncludesHelpers
      def request_includes
        if params[:include]&.blank?
          []
        elsif params[:include].present?
          params[:include].split(',')
        end
      end

      def default_resource_includes
        []
      end

      def resource_includes
        (request_includes || default_resource_includes).map(&:intern)
      end
    end
  end
end