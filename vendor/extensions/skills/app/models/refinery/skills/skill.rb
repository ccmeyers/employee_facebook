module Refinery
  module Skills
    class Skill < Refinery::Core::BaseModel
      self.table_name = 'refinery_skills'

      attr_accessible :name, :position

      validates :name, :presence => true, :uniqueness => true

      has_many :employee_skills, :class_name => '::Refinery::EmployeeSkills::EmployeeSkill'
      has_many :employees, through: :employee_skills
    end
  end
end
