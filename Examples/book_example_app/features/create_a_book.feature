Feature: create a book
  In order to keep track of books in my library
  As a user
  I want to create a new book

  Background:
    Given there is an author called "JRR Tolkien"

  Scenario: create a valid book
    Given I am on the list of books by "JRR Tolkien"
    When I click on "New Book"
    And I fill in the form with valid data
    Then I should see the new book in the list

  Scenario: error when entering invalid ISBN
    Given I am on the list of books by "JRR Tolkien"
    When I click on "New Book"
    And I fill in the form with an invalid ISBN
    Then I should see an error
