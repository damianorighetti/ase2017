FactoryBot.define do
  factory :book do
    title 'Il Signore degli Anelli'
    isbn 12345678901
    year 1955
    publisher 'Einaudi'
    author
  end
end
