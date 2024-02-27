Feature:  mock server

  Scenario: pathMatches ('/user') && methodIs('post')  && request.name == 'Robin'
    * def response = {"status": "success"}
    * def responseHeaders = {"Content-type":"application/json"}
    * def responseStatus = 200
    * def responseDelay = 0

  Scenario: pathMatches ('/user') && methodIs('post')
    * def response = {"status": "fail"}
    * def responseHeaders = {"Content-type":"application/json"}
    * def responseStatus = 200
    * def responseDelay = 0

  Scenario: pathMatches ('/user')
    * def response = {"status": "ok"}
    * def responseHeaders = {"Content-type":"application/json"}
    * def responseStatus = 200
    * def responseDelay = 0