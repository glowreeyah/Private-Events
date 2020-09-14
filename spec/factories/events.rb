FactoryBot.define do
  factory :event do
    name { 'event1' }
    description { 'description1' }
    date { Date.new(2000, 1, 1) }
    creator { User.first }
  end
end
