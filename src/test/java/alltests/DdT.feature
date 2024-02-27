Feature: Test

  Background:
    * url baseUrl

  Scenario Outline: тест POST
    * def createReq =
      """
      {
    "name": <name>,
    "job": <job>
      }
      """

    Given path "/api/users"
    And request createReq
    When method post
    Then status <status>
    * match response == {"name":<name>,"job":<job>,"id":"#ignore","createdAt":"#ignore"}

    Examples:
      | name     | status | job      |
      | morpheus | 201    | leader   |
      | Neo      | 201    | favorite |
      | Pythia   | 201    | prophet  |

