module Refinery
  module Skills
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Skills

      engine_name :refinery_skills

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "skills"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.skills_admin_skills_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/skills/skill',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Skills)
      end
    end
  end
end
