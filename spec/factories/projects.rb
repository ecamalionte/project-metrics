# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    title "MyString"
    description "MyString"
    started_at 30.days.ago
    dead_line_at  30.days.from_now
    progress_rate 10
  end
end
