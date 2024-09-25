# API Petstore

Este proyecto utiliza la API de Petstore para gestionar mascotas. A continuación se describen los pasos para agregar, verificar, modificar y eliminar una mascota.

## Requisitos

- Acceso a la API de Petstore: [https://petstore.swagger.io/v2/](https://petstore.swagger.io/v2/)
- Karate Framework para la ejecución de pruebas.

## Pasos

### 1. Adición de una mascota nueva

Agrega una nueva mascota con el siguiente formato de nombre: `Pug_Luna`.

**Request:**

```http
POST /pet
Content-Type: application/json

{
    "id": 2000004,
    "category": {
        "id": 1,
        "name": "Salvaje"
    },
    "name": "Pug_Luna",
    "photoUrls": ["https://photo.url/badpets.jpg"],
    "tags": [{"id": 12345, "name": "coco"}],
    "status": "available"
}
```

### 2. Verificación de que la mascota está agregada correctamente

Verifica que la mascota se haya agregado correctamente consultando su información.

**Request:**

```http
GET /pet/2000004
```

**Expected Response:**

```json
{
    "id": 2000004,
    "category": {
        "id": 1,
        "name": "Salvaje"
    },
    "name": "Pug_Luna",
    "photoUrls": ["https://photo.url/badpets.jpg"],
    "tags": [{"id": 12345, "name": "coco"}],
    "status": "available"
}
```

### 3. Modificación del nombre de la mascota

Modifica el nombre de la mascota a `PugCarlino_Luna`.

**Request:**

```http
PUT /pet
Content-Type: application/json

{
    "id": 2000004,
    "category": {
        "id": 1,
        "name": "Salvaje"
    },
    "name": "PugCarlino_Luna",
    "photoUrls": ["https://photo.url/badpets.jpg"],
    "tags": [{"id": 12345, "name": "coco"}],
    "status": "available"
}
```

### 4. Verificación de que el nombre de la mascota fue modificado correctamente

Verifica que el nombre de la mascota se haya actualizado correctamente.

**Request:**

```http
GET /pet/2000004
```

**Expected Response:**

```json
{
    "id": 2000004,
    "category": {
        "id": 1,
        "name": "Salvaje"
    },
    "name": "PugCarlino_Luna",
    "photoUrls": ["https://photo.url/badpets.jpg"],
    "tags": [{"id": 12345, "name": "coco"}],
    "status": "available"
}
```

### 5. Eliminación de la mascota agregada

Elimina la mascota que se agregó anteriormente.

**Request:**

```http
DELETE /pet/2000004
```

## Conclusión

Estos pasos ilustran cómo agregar, verificar, modificar y eliminar una mascota utilizando la API de Petstore. Asegúrate de realizar cada paso en el orden correcto para garantizar que las operaciones se completen correctamente.
```
