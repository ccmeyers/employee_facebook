module Refinery
  module Employees
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Employees

      engine_name :refinery_employees

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "departments"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.employees_admin_departments_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/employees/department',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/employees/departments(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Departments)
      end
    end
  end
end
