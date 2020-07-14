Feature: Login

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: 这是登录获取 Token 的方法
    Given path 'users/1'
    When method get
    Then status 200
    * def token = response.email
