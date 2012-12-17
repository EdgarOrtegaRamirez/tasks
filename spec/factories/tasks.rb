FactoryGirl.define do

  factory :task do |f|
    text
    f.list_id {1}
    f.completed {false}
  end

  sequence :text do |n|
    "My Task #{n}"
  end
end