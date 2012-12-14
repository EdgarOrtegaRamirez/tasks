FactoryGirl.define do

  factory :user do |f|
    email
    f.password {"qweasd"}
    f.full_name {"test test"}
  end

  sequence :email do |n|
    "test#{n}@me.com"
  end

end