# This migration comes from refinery_skills (originally 1)
class CreateSkillsSkills < ActiveRecord::Migration

  def up
    create_table :refinery_skills do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-skills"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/skills/skills"})
    end

    drop_table :refinery_skills

  end

end
