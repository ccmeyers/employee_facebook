module Refinery
  module Employees
    module Admin
      class DepartmentsController < ::Refinery::AdminController

        crudify :'refinery/employees/department',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
