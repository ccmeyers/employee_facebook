module Refinery
  module EmployeeSkills
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::EmployeeSkills

      engine_name :refinery_employee_skills

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "employee_skills"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.employee_skills_admin_employee_skills_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/employee_skills/employee_skill'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::EmployeeSkills)
      end
    end
  end
end
