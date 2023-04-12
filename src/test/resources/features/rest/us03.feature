Feature: As a librarian, I want to create a new book



  Scenario: Create a new book API
    Given I logged Library api as a "librarian"
    And Accept header is "application/json"
    And Request Content Type header is "application/x-www-form-urlencoded"
    And I create a random "book" as request body
    When I send POST request to "/add_book" endpoint
    Then status code should be 200
    And Response Content type is "application/json; charset=utf-8"
    And the field value for "message" path should be equal to "The book has been created."
    And "book_id" field should not be null



  Scenario: Create a new book all layers
    Given I logged Library api as a "librarian"
    And Accept header is "application/json"
    And Request Content Type header is "application/x-www-form-urlencoded"
    And I create a random "book" as request body
    And I logged in Library UI as "librarian"
    And I navigate to "Books" page
    When I send POST request to "/add_book" endpoint
    Then status code should be 200
    And Response Content type is "application/json; charset=utf-8"
    And the field value for "message" path should be equal to "The book has been created."
    And "book_id" field should not be null
    And UI, Database and API created book information must match