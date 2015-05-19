module Refinery
  module Skills
    module Admin
      class SkillsController < ::Refinery::AdminController

        crudify :'refinery/skills/skill',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
