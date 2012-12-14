FactoryGirl.define do

  factory :task do |f|
    text
    f.completed {false}
  end

  sequence :text do |n|
    "My Task #{n}"
  end
end