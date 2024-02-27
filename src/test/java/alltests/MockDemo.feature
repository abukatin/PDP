@mock
Feature: mock demo

  Scenario: mock
    Given url "http://localhost:8088/user"
    When method get
    Then match response.status == 'ok'

    Given url "http://localhost:8088/user"
    And request {"name": "Batman"}
    When method post
    Then match response.status == 'fail'

    Given url "http://localhost:8088/user"
    And request {"name": "Robin"}
    When method post
    Then match response.status == 'success'