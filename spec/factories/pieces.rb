# Read about factories at https://github.com/thoughtbot/factory_girl


FactoryGirl.define do
  factory :piece do
    title {Faker::Lorem.words(2).join(' ')}
    instrumentation "MyString"
    notes {Faker::Lorem.paragraph(3)}
    duration {rand(10)}
    last_performed { Date.today - Faker::Number.number(3).to_i.days }
    published { Date.today - Faker::Number.number(5).to_i.days }
  end
end
