Feature: post pet

  Background:
    Given url 'https://petstore.swagger.io/v2/pet/'
    * request {"id":"#(IdMascota)","category":{"id":1,"name":"#(CategoriaNombre)"},"name":"#(NombreMascota)","photoUrls":["#(UrlFoto)"],"tags":[{"id":12345,"name":"#(etiquetaNombre)"}],"status":"#(Status)"}

  Scenario Outline: pet post
    When method post
    Then status 200
    And match $.name == '#(NombreMascota)'
    * def responsedata = response
    * print responsedata
    Examples:
      | IdMascota | CategoriaNombre | NombreMascota | UrlFoto                        | etiquetaNombre | Status  |
      | 2000005   | Domestico       | Pug_Luna      | https://photo.url/goodpets.jpg | conie          | pending |
    #CategoriaNombre: Domestico o Salvaje
    #Status: available, pending, sold