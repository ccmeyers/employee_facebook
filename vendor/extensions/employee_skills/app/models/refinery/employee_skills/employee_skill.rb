module Refinery
  module EmployeeSkills
    class EmployeeSkill < Refinery::Core::BaseModel
      self.table_name = 'refinery_employee_skills'

      attr_accessible :employee_id, :skill_id, :position

      belongs_to :employee, :class_name => '::Refinery::Employees::Employee'
      belongs_to :skill, :class_name => '::Refinery::Skills::Skill'

      # def title was created automatically because you didn't specify a string field
      # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
      def title
        # "Override def title in vendor/extensions/employee_skills/app/models/refinery/employee_skills/employee_skill.rb"
      end
    end
  end
end
