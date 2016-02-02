FactoryGirl.define do
  factory :question do
    update_form_id 1
    sequence(:position) { |i| i }
    text 'question 1'
  end
end
