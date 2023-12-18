Feature: Del PetStore API Test

  Background:
    Given url "https://petstore.swagger.io/"
    And print "--------Del User PetStore--------"

  Scenario: Del User by name
    When path "/v2/user/string"
    And method delete
    Then status 200
    And print response
