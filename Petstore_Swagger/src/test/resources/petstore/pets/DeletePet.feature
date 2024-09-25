Feature: delete pet

  Background:
    Given url 'https://petstore.swagger.io/v2/pet/'
    * def pet = read('pet.json')
    * path pet.user

  Scenario Outline: pet delete
    When method delete
    Then status <estado>
    * def responsedata  = response
    * print responsedata
    Examples:
      | estado       |
      | 200          |
