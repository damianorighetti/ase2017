Given("there is a book") do
  @book = FactoryBot.create(:book)
end

Given("I am viewing the details of a book") do
  visit author_book_path(@book.author, @book)
end

When("I change the title to {string}") do |string|
  fill_in 'Title', with: string
end

Then("the title of the book is {string}") do |string|
  expect(page).to have_content(string)
end
