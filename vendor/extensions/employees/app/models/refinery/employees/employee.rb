module Refinery
  module Employees
    class Employee < Refinery::Core::BaseModel
      self.table_name = 'refinery_employees'

      attr_accessible :name, :photo_id, :bio, :position, :department_id, :skill_ids

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      belongs_to :department, :class_name => '::Refinery::Employees::Department'

      has_many :employee_skills, :class_name => '::Refinery::EmployeeSkills::EmployeeSkill'
      has_many :skills, through: :employee_skills
    end
  end
end
