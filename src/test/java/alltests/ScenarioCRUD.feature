Feature: Test

  Background:
    Given url baseUrl

  Scenario: тест Api на сайте https://reqres.in/

    And def createReq =
      """
      {
    "name": "morpheus",
    "job": "leader"
      }
      """
    Given path "/api/users"
    And request createReq
    When method post
    Then status 201
    And match responseStatus == 201
    And match response == read('classpath:alltests/Response/responseCreateUser.json')

    * def createReq =
    """
    {
    "email": "eve.holt@reqres.in",
    "password": "pistol"
    }
    """
    Given path "/api/register"
    And request createReq
    When method post
    Then status 200
    * match responseHeaders['Content-Length'] == ['36']

    * path "api/unknown"
    * method get
    * status 200
    * assert responseTime < 1000
    * match response == read('classpath:alltests/Response/responseList.json')

    * path "/api/users/23"
    * method get
    * status 404
    * match responseType == 'json'