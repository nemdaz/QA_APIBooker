# CASOS DE PRUEBAS

Los casos de pruebas son elaborados teniendo en cuenta los escenarios y alcance del plan de pruebas.

| Caso de Uso (CUS) | Descripción |
| ----------------- | ------------ |
| CUS01             | Auth         |
| CUS02             | Booking      |
| CUS03             | Health Check |

### Lista de casos de pruebas

##### CP01

| -                              | Detalle                                                                                     |
| :----------------------------- | :------------------------------------------------------------------------------------------ |
| **Pre-requisitos**       | EndPoint: https://restful-booker.herokuapp.com/ping                                        |
| **Datos de entrada**     | -                                                                                           |
| **Detalle de la prueba** | Verificar que el endpoint Ping responda con la confirmación de la disponibilidad de la API |
| **Resultado esperado**   | El endpoint responde con código satisfactorio.                                             |
| **Etiquetas**            | CUS03, Happy Path                                                                           |

| Nro. de Paso | Descripcion                         | Datos | Resultado esperado                |
| :----------- | :---------------------------------- | :---- | :-------------------------------- |
| 1            | Se envía solicitud GET al EndPoint | -     | Codigo: 201<br />Mensaje: Created |

##### CP02

| -                              | Detalle                                                                                                                                                          |
| :----------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Pre-requisitos**       | EndPoint: https://restful-booker.herokuapp.com/auth                                                                                                             |
| **Datos de entrada**     | -                                                                                                                                                                |
| **Detalle de la prueba** | Verificar que el endpoint Auth - Create Token al recibir los datos de autenticación con formato y estructura correcta, responda con el token o error controlado |
| **Resultado esperado**   | El endpoint responde con el campo token o error controlado.                                                                                                      |
| **Etiquetas**            | CUS01, Happy Path                                                                                                                                                |

| Nro. de Paso | Descripcion                                                     | Datos                                                                                | Resultado esperado                                                                 |
| :----------- | :-------------------------------------------------------------- | :----------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------- |
| 1            | Se envía solicitud POST al EndPoint segun la especificación. | Credenciales de acceso válidos.<br />En formato JSON y especificacion de la API.    | Código: 200<br />Respuesta: Objeto JSON con el attributo token.                   |
| 2            | Se envía solicitud POST al EndPoint segun la especificación. | Credenciales de acceso NO válidos.<br />En formato JSON y especificacion de la API. | Código: 200<br />Respuesta: Objeto JSON que contiene mensaje de error controlado. |

##### CP03

| -                              | Detalle                                                                                                                                                    |
| :----------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Pre-requisitos**       | EndPoint: https://restful-booker.herokuapp.com/auth                                                                                                       |
| **Datos de entrada**     | -                                                                                                                                                          |
| **Detalle de la prueba** | Verificar que el endpoint Auth - Create Token al recibir los datos de autenticación en formato y/o estructura incorrecto la API devuelve codigo de error. |
| **Resultado esperado**   | El endpoint responde con el campo token.                                                                                                                   |
| **Etiquetas**            | CUS01, UnHappy Path                                                                                                                                        |

| Nro. de Paso | Descripcion                                                                               | Datos                                                                            | Resultado esperado                                                                       |
| :----------- | :---------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------- |
| 1            | Se envía solicitud POST al EndPoint.<br />Header del request diferente al especificado. | Credenciales de acceso válidos.<br />En formato JSON y especificacion de la API | Código: Diferente de 200<br />Respuesta: JSON con mensaje de error controlado.          |
| 2            | Se envía solicitud POST al EndPoint.<br />Header del request según al especificado.   | Credenciales de acceso válidos.<br />Estructura diferente de JSON.              | Código: Diferente de 200<br />Respuesta: Mensaje de error del servidor o no controlado. |


##### CP04

| -                              | Detalle                                                                                                                                                                                                                            |
| :----------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Pre-requisitos**       | EndPoint: https://restful-booker.herokuapp.com/booking                                                                                                                                                                            |
| **Datos de entrada**     | -                                                                                                                                                                                                                                  |
| **Detalle de la prueba** | Verificar que el endpoint Booking/CREATE al recibir los datos en estructura (JSON), formato y valores correctos según la especificación devuelve un objeto JSON que contine un identificador y los datos enviados al EndPoint. |
| **Resultado esperado**   | El endpoint responde con objeto JSON con una campo identificador y el objeto enviado.                                                                                                                                              |
| **Etiquetas**            | CUS02, Happy Path                                                                                                                                                                                                                  |

| Nro. de Paso | Descripcion                                                                             | Datos                                                                                                     | Resultado esperado |
| :----------- | :-------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------- | :----------------- |
| 1            | Se envía solicitud POST al EndPoint.<br />Header del request según al especificado. | JSON con los datos de la reserva (booking).<br />Valores de los campos completos y según definición.    |                    |
| 2            | Se envía solicitud POST al EndPoint.<br />Header del request según al especificado. | JSON con los datos de la reserva (booking).<br />Valores de los campos string con caracteres especiales. |                    |
| 3            | Se envía solicitud POST al EndPoint.<br />Header del request según al especificado. | JSON con los datos de la reserva (booking).<br />Valores de los campos no string con valor null.         |                    |







END
