FactoryGirl.define do
  factory :update_form do
    sequence(:token) { |n| "8oWrDt77bdjo7hiveBjDZtxG#{n}" }
    name 'Daily Updates'
  end
end
