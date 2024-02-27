Feature: UI

  Background:
    * url baseUrl

  Scenario: UI test (Для общего развития)
#    * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"] })
    * driver "https://reqres.in"
    * scroll('.endpoints > ul:nth-child(1) > li:nth-child(7)').click()
    * match text('.request > pre:nth-child(2)') == read('classpath:alltests/Response/responseRequest.json')
#    * def requestText = response
#    * path "/api/users"
#    * request requestText
#    * method post
#    * status 201
#    * match responseStatus == 201
#    * match response == read('classpath:alltests/Response/responseCreateUser.json')
    * java.lang.Thread.sleep(5000)

