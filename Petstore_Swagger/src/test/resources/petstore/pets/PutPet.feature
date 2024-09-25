Feature: put pet

  Background:
    Given url 'https://petstore.swagger.io/v2/pet/'
    * request {"id":"#(IdMascota)","category":{"id":1,"name":"#(CategoriaNombre)"},"name":"#(NombreMascota)","photoUrls":["#(UrlFoto)"],"tags":[{"id":12345,"name":"#(etiquetaNombre)"}],"status":"#(Status)"}

  Scenario Outline: pet put
    When method put
    Then status 200
    And match $.name == '#(NombreMascota)'
    * def responsedata = response
    * print responsedata
    Examples:
      | IdMascota | CategoriaNombre | NombreMascota   | UrlFoto                       | etiquetaNombre | Status |
      | 2000005   | Salvaje         | PugCarlino_Luna | https://photo.url/badpets.jpg | coco           | sold   |

    #CategoriaNombre: Domestico o Salvaje
    #Status: available, Pending, Sold