# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
    value 1
    votable_id 1
    votable_type "MyString"
  end
end
