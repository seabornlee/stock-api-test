Feature: KaiPanLa
  Background:
    * def login = call read('classpath:login/login.feature')
    * print login.token

  Scenario: Download xml file
    Given url baseURL
    * configure headers = { token: '#(login.token)'}
    And path '/kpl/code/xml/3/5'
    When method GET
    Then status 200
    And match header Content-Type contains 'application/xml'