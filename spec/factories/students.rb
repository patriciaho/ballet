FactoryGirl.define do
  factory :student do
    sequence :name do |n| "Student #{n}" end
  end

end
