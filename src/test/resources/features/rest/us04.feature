Feature: As a librarian, I want to create a new user
  @us04
  Scenario: Create a new user API
    Given I logged Library api as a "librarian"
    And Accept header is "application/json"
    And Request Content Type header is "application/x-www-form-urlencoded"
    And I create a random "user" as request body
    When I send POST request to "/add_user" endpoint
    Then status code should be 200
    And Response Content type is "application/json; charset=utf-8"
    And the field value for "message" path should be equal to "The user has been created."
    And "user_id" field should not be null



  Scenario: Create a new user all layers
    Given I logged Library api as a "librarian"
    And Accept header is "application/json"
    And Request Content Type header is "application/x-www-form-urlencoded"
    And I create a random "user" as request body
    When I send POST request to "/add_user" endpoint
    Then status code should be 200
    And Response Content type is "application/json; charset=utf-8"
    And the field value for "message" path should be equal to "The user has been created."
    And "user_id" field should not be null
    And created user information should match with Database
    And created user should be able to login Library UI
    And created user name should appear in Dashboard Page
