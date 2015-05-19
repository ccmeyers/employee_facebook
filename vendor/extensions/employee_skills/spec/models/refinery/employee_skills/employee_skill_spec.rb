require 'spec_helper'

module Refinery
  module EmployeeSkills
    describe EmployeeSkill do
      describe "validations" do
        subject do
          FactoryGirl.create(:employee_skill)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
