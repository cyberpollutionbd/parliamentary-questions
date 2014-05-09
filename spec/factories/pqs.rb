# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :PQ do
    pin 1
    house_id 1
    raising_member_id 1
    date_raised "2014-05-08 13:45:31"
    response_due "2014-05-08 13:45:31"
    question "MyString"
    answer nil
  end
end
