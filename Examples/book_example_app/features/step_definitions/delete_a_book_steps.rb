Given("I am viewing the details of the book") do
  step %(I am viewing the details of a book)
end

Then("I should not see the book in the list of books") do
  expect(page).not_to have_content(@book.title)
end

Then("I am on the page of the book") do
  pending # Write code here that turns the phrase above into concrete actions
end
