module Refinery
  module EmployeeSkills
    module Admin
      class EmployeeSkillsController < ::Refinery::AdminController

        crudify :'refinery/employee_skills/employee_skill',
                :xhr_paging => true

      end
    end
  end
end
