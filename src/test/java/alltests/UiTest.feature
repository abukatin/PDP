Feature: UI

  Scenario: UI test
    * def chanelUrl = "https://www.youtube.com/@codeandtest"
    * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"] })
    Given driver "https://google.com"
    * input('#APjFqb', 'Code&Test YouTube')
    * input('#APjFqb', Key.ENTER)
    * click('{h3:0}Code&Test')
    * waitForUrl(chanelUrl)
    * match driver.url == chanelUrl
    * java.lang.Thread.sleep(5000)

