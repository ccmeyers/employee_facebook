
FactoryGirl.define do
  factory :department, :class => Refinery::Employees::Department do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

