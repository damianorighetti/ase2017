FactoryBot.define do
  factory :entry do
    date "2017-12-04"
    from_account "MyString"
    to_account "MyString"
    amount "9.99"
    description "MyText"
  end
end
