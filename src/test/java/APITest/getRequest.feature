Feature: Get Petstore API Test

  Background:
    Given url "https://petstore.swagger.io/"
    And print "--------Get User Petstore--------"

#  Scenario: Get User
##    When url https://petstore.swagger.io/v2/user/string
#    When path "/v2/user/string"
#    And method get
#    Then print response
#    And status 200

  Scenario: Get User by name
    When path "/v2/user/string"
    And method get
    Then status 200
    And print response
    And assert response.email == "string"

