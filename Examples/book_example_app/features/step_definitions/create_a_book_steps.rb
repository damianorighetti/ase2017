Given("there is an author called {string}") do |author_name|
  FactoryBot.create(:author, name: author_name)
end

Given("I am on the list of books by {string}") do |author_name|
  author = Author.find_by name: author_name
  visit author_books_path(author)
end

When("I click on {string}") do |string|
  click_on string
end

When("I fill in the form with valid data") do
  fill_in 'Title', with: 'Il Silmarillion'
  fill_in 'Isbn', with: 12345678901
  fill_in 'Year', with: 1955
  fill_in 'Publisher', with: 'Einaudi'

  click_on 'Create Book'
end

Then("I should see the new book in the list") do
  book = Book.last
  expect(page).to have_content(book.title)
end

When("I fill in the form with an invalid ISBN") do
  fill_in 'Title', with: 'Il Silmarillion'
  fill_in 'Isbn', with: 123
  fill_in 'Year', with: 1955
  fill_in 'Publisher', with: 'Einaudi'

  click_on 'Create Book'
end

Then("I should see an error") do
  expect(page).to have_css('#error_explanation')
end
