# Read about factories at https://github.com/thoughtbot/factory_girl


FactoryGirl.define do
  factory :piece do
    title "MyString"
    instrumentation "MyString"
    notes "MyText"
    duration 1
    last_performed "2014-07-15"
    published "2014-07-15"
  end
end
