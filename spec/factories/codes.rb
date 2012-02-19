# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :code do
    block_id 1
    code_3 "MyString"
    code_6 "MyString"
    code_title "MyString"
  end
end
