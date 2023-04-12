Feature: As a librarian, I want to retrieve all users

@us01
  Scenario: Retrieve all users from the API endpoint

    Given I logged Library api as a "librarian"
    And Accept header is "application/json"
    When I send GET request to "/get_all_users" endpoint
    Then status code should be 200
    And Response Content type is "application/json; charset=utf-8"
    And "id" field should not be null
    And "name" field should not be null




