Feature: Post PetStore API Test

  Background:
    Given url "https://petstore.swagger.io/"
    And print "--------Post User PetStore--------"

  Scenario: Post User
    When path "/v2/user/createWithArray"
    And request [{"id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0}]
    And method post
    And headers {accept: 'application/json'}
    Then  status 200
    And print response