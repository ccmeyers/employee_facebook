# This migration comes from refinery_employees (originally 2)
class CreateEmployeesDepartments < ActiveRecord::Migration

  def up
    create_table :refinery_employees_departments do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-employees"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/employees/departments"})
    end

    drop_table :refinery_employees_departments

  end

end
