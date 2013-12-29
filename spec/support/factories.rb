FactoryGirl.define do

  factory :user, aliases: [:owner] do
    sequence(:email) {|n| "user#{n}@example.com" }
    password "secretpassword"
  end

  factory :recipe do
    owner
    name "A Recipe"
  end


end