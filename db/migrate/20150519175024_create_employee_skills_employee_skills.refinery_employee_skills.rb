# This migration comes from refinery_employee_skills (originally 1)
class CreateEmployeeSkillsEmployeeSkills < ActiveRecord::Migration

  def up
    create_table :refinery_employee_skills do |t|
      t.integer :employee_id
      t.integer :skill_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-employee_skills"})
    end

    drop_table :refinery_employee_skills

  end

end
