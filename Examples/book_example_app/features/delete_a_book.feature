Feature: delete a book
  In order to remove a book I don't have anymore
  As a User
  I want to delete a book

  Scenario: delete a book
    Given there is a book
    And I am viewing the details of the book
    When I click on "Destroy"
    Then I should not see the book in the list of books
