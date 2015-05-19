class AddDepartmentToRefineryEmployees < ActiveRecord::Migration
  def change
    add_column :refinery_employees, :department_id, :integer
  end
end
