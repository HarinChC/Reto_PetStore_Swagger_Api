Feature: get pet

  Background:
    Given url 'https://petstore.swagger.io/v2/pet/'
    * def pet = read('pet.json')
    * path pet.user

  Scenario Outline: pet get
    When method get
    Then status <estado>
    * def responsedata = response
    And match $.name == pet.NombreMascota
    * print responsedata
    Examples:
      | estado       |
      | 200          |