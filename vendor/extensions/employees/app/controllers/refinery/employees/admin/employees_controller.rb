module Refinery
  module Employees
    module Admin
      class EmployeesController < ::Refinery::AdminController

        before_filter :find_all_departments, :find_all_skills

        crudify :'refinery/employees/employee',
                :title_attribute => 'name',
                :xhr_paging => true

        protected

          def find_all_departments
            @departments = Refinery::Employees::Department.all
          end

          def find_all_skills
            @skills = Refinery::Skills::Skill.all
          end

        end

    end
  end
end
