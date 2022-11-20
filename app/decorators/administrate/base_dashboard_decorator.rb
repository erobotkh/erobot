require "administrate/base_dashboard"

module Administrate
  module BaseDashboardDecorator
    def display_resource(object)
      name = object.name if object.respond_to?(:name)
      name = object.identifier if object.respond_to?(:identifier)
      name = recursive_parents_name(object) if object.respond_to?(:parent) 

      prefix = "#{object.class} ##{object.id}"
      return "#{prefix} : #{name}" if name&.length != 0

      prefix
    end

    private
    def recursive_parents_name(object)
      object_ids = [object.id]
      name = object.name
      parent = object.parent
  
      while parent != nil and !object_ids.include?(parent.id)
        name = "#{parent&.name} / #{name}"
        object_ids << parent.id
  
        parent = parent&.parent
      end
  
      name
    end
  end
end

Administrate::BaseDashboard.send :prepend, Administrate::BaseDashboardDecorator