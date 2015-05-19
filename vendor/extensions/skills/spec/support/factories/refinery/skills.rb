
FactoryGirl.define do
  factory :skill, :class => Refinery::Skills::Skill do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

