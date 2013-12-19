# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project, class: Project do
    started_on 30.days.ago
    dead_line  30.days.from_now
    status 10
  end
end
