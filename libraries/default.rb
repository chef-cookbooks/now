class Chef
  # SubResourceCollection
  class SubResourceCollection < ResourceCollection
    def initialize(parent)
      @parent = parent
      super()
    end

    def lookup(resource)
      super
    rescue Chef::Exceptions::ResourceNotFound
      @parent.lookup(resource)
    end
  end

  module DSL
    # Adding a new method to the DSL
    module IncludeRecipe
      def include_recipe_now(*recipe_names)
        original_resource_collection = run_context.resource_collection
        begin
          run_context.resource_collection = SubResourceCollection.new(original_resource_collection)
          include_recipe(*recipe_names)
          Chef::Runner.new(run_context).converge
          run_context.resource_collection.each do |res|
            res.action(:nothing)
            original_resource_collection << res
          end
        ensure
          run_context.resource_collection = original_resource_collection
        end
      end
    end
  end
end

class Chef
  class Resource
    class ChefGem < Chef::Resource::Package::GemPackage
      def after_created
        Gem.clear_paths
      end
    end
  end
end
