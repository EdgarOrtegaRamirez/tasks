FactoryGirl.define do

  factory :list do |f|
    name
    f.user_id {1}
  end

  sequence :name do |n|
    "My Task #{n}"
  end
end