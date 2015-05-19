module Refinery
  module Employees
    class Department < Refinery::Core::BaseModel

      attr_accessible :name, :position

      validates :name, :presence => true, :uniqueness => true

      has_many :employees, :class_name => '::Refinery::Employees::Employee'
    end
  end
end
