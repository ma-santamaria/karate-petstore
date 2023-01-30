# Tratamiento de datos en APIs

## Ejecución

Se puede realizar mediante `mvn test`

## Ejemplo de salida del comando

```
[INFO] Scanning for projects...
[INFO] 
[INFO] ------------------< io.github.ma-santamaria:petstore >------------------
[INFO] Building petstore 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ petstore ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] skip non existing resourceDirectory /home/miguelasr/Desarrollo/hiberus/petstore/src/main/resources
[INFO] 
[INFO] --- maven-compiler-plugin:3.8.1:compile (default-compile) @ petstore ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ petstore ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] Copying 3 resources
[INFO] 
[INFO] --- maven-compiler-plugin:3.8.1:testCompile (default-testCompile) @ petstore ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- maven-surefire-plugin:2.22.2:test (default-test) @ petstore ---
[INFO] 
[INFO] -------------------------------------------------------
[INFO]  T E S T S
[INFO] -------------------------------------------------------
[INFO] Running petstore.TestsRunner
08:56:30.509 [main] DEBUG com.intuit.karate.Suite - [config] classpath:karate-config.js
08:56:30.513 [main] INFO  com.intuit.karate.Suite - backed up existing 'target/karate-reports' dir to: target/karate-reports_1675065390513
08:56:31.550 [pool-1-thread-1] INFO  com.intuit.karate - karate.env system property was: null 
08:56:31.580 [pool-1-thread-2] INFO  com.intuit.karate - karate.env system property was: null 
08:56:31.897 [pool-1-thread-2] DEBUG com.intuit.karate - request:
1 > GET https://petstore.swagger.io/v2/pet/findByStatus?status=sold
1 > Host: petstore.swagger.io
1 > Connection: Keep-Alive
1 > User-Agent: Apache-HttpClient/4.5.13 (Java/17.0.1)
1 > Accept-Encoding: gzip,deflate


08:56:31.897 [pool-1-thread-1] DEBUG com.intuit.karate - request:
1 > POST https://petstore.swagger.io/v2/user
1 > Content-Type: application/json; charset=UTF-8
1 > Content-Length: 167
1 > Host: petstore.swagger.io
1 > Connection: Keep-Alive
1 > User-Agent: Apache-HttpClient/4.5.13 (Java/17.0.1)
1 > Accept-Encoding: gzip,deflate
{"id":0,"username":"newuser-1675065391607","firstName":"New","lastName":"User","email":"new.user@example.com","password":"password","phone":"555123456","userStatus":0}

08:56:32.692 [pool-1-thread-1] DEBUG com.intuit.karate - response time in milliseconds: 790
1 < 200
1 < Date: Mon, 30 Jan 2023 07:56:32 GMT
1 < Content-Type: application/json
1 < Transfer-Encoding: chunked
1 < Connection: keep-alive
1 < Access-Control-Allow-Origin: *
1 < Access-Control-Allow-Methods: GET, POST, DELETE, PUT
1 < Access-Control-Allow-Headers: Content-Type, api_key, Authorization
1 < Server: Jetty(9.2.9.v20150224)
{"code":200,"type":"unknown","message":"783000000000000963"}

08:56:32.692 [pool-1-thread-2] DEBUG com.intuit.karate - response time in milliseconds: 791
1 < 200
1 < Date: Mon, 30 Jan 2023 07:56:32 GMT
1 < Content-Type: application/json
1 < Transfer-Encoding: chunked
1 < Connection: keep-alive
1 < Access-Control-Allow-Origin: *
1 < Access-Control-Allow-Methods: GET, POST, DELETE, PUT
1 < Access-Control-Allow-Headers: Content-Type, api_key, Authorization
1 < Server: Jetty(9.2.9.v20150224)
[{"id":2345,"category":{"id":9223372036854713280,"name":"beautiful"},"name":"Raccoon","photoUrls":["data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/"],"tags":[{"id":17512317,"name":"aliquip elit qui do ut"},{"id":56868537,"name":"eu Duis dolore tempor"}],"status":"sold"},{"id":9223372036854713534,"category":{"id":0,"name":"korgy dogs"},"name":"Fedya","photoUrls":["https://natalyland.ru/wp-content/uploads/6/d/2/6d22beb9c0075e9b891bda4b933418ea.jpeg"],"tags":[{"id":0,"name":"korgy"}],"status":"sold"},{"id":9223372036854713539,"category":{"id":0,"name":"korgy dogs"},"name":"Fedya","photoUrls":["https://natalyland.ru/wp-content/uploads/6/d/2/6d22beb9c0075e9b891bda4b933418ea.jpeg"],"tags":[{"id":0,"name":"korgy"}],"status":"sold"},{"id":9223372036854713280,"category":{"id":9223372036854713280,"name":"beautiful"},"name":"Raccoon","photoUrls":["data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/"],"tags":[{"id":17512317,"name":"aliquip elit qui do ut"},{"id":56868537,"name":"eu Duis dolore tempor"}],"status":"sold"},{"id":13,"category":{"id":0,"name":"cats"},"photoUrls":["string"],"tags":[{"id":0,"name":"string"}],"status":"sold"},{"id":9679043588,"category":{"id":73740,"name":"rabbits"},"name":"mini lop","photoUrls":[],"tags":[{"id":6698,"name":"Franc"}],"status":"sold"},{"id":74408294,"category":{"id":70278030,"name":"in adipisicing"},"name":"doggie","photoUrls":["nostrud sunt eu occaecat elit","esse aute non magna"],"tags":[{"id":81618844,"name":"id aliquip"},{"id":-96817599,"name":"ut elit esse"}],"status":"sold"},{"id":9223372036854713898,"category":{"id":345,"name":"beautiful"},"name":"Raccoon","photoUrls":["data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/"],"tags":[{"id":17512317,"name":"aliquip elit qui do ut"},{"id":56868537,"name":"eu Duis dolore tempor"}],"status":"sold"}]

08:56:32.701 [pool-1-thread-1] INFO  com.intuit.karate - [print] created user id is:  783000000000000963 
08:56:32.713 [pool-1-thread-1] DEBUG com.intuit.karate - request:
2 > GET https://petstore.swagger.io/v2/user/newuser-1675065391607
2 > Host: petstore.swagger.io
2 > Connection: Keep-Alive
2 > User-Agent: Apache-HttpClient/4.5.13 (Java/17.0.1)
2 > Accept-Encoding: gzip,deflate


08:56:32.747 [pool-1-thread-2] INFO  com.intuit.karate - [print] [
  {
    "id": 2345,
    "name": "Raccoon"
  },
  {
    "id": 9223372036854713534,
    "name": "Fedya"
  },
  {
    "id": 9223372036854713539,
    "name": "Fedya"
  },
  {
    "id": 9223372036854713280,
    "name": "Raccoon"
  },
  {
    "id": 13,
    "name": null
  },
  {
    "id": 9679043588,
    "name": "mini lop"
  },
  {
    "id": 74408294,
    "name": "doggie"
  },
  {
    "id": 9223372036854713898,
    "name": "Raccoon"
  }
]
 
08:56:32.757 [pool-1-thread-2] INFO  com.intuit.karate - [print] {
  "null": 1,
  "Fedya": 1,
  "doggie": 1,
  "Raccoon": 1,
  "mini lop": 1
}
 
08:56:33.190 [pool-1-thread-1] DEBUG com.intuit.karate - response time in milliseconds: 477
2 < 200
2 < Date: Mon, 30 Jan 2023 07:56:33 GMT
2 < Content-Type: application/json
2 < Transfer-Encoding: chunked
2 < Connection: keep-alive
2 < Access-Control-Allow-Origin: *
2 < Access-Control-Allow-Methods: GET, POST, DELETE, PUT
2 < Access-Control-Allow-Headers: Content-Type, api_key, Authorization
2 < Server: Jetty(9.2.9.v20150224)
{"id":783000000000000963,"username":"newuser-1675065391607","firstName":"New","lastName":"User","email":"new.user@example.com","password":"password","phone":"555123456","userStatus":0}

08:56:33.194 [pool-1-thread-1] INFO  com.intuit.karate - [print] {
  "id": 783000000000000963,
  "username": "newuser-1675065391607",
  "firstName": "New",
  "lastName": "User",
  "email": "new.user@example.com",
  "password": "password",
  "phone": "555123456",
  "userStatus": 0
}
 
---------------------------------------------------------
feature: classpath:petstore/petstore.feature
scenarios:  2 | passed:  2 | failed:  0 | time: 2,7781
---------------------------------------------------------

08:56:33.875 [pool-2-thread-1] INFO  com.intuit.karate.Suite - <<pass>> feature 1 of 1 (0 remaining) classpath:petstore/petstore.feature
Karate version: 1.3.1
======================================================
elapsed:   3,97 | threads:    5 | thread time: 2,78 
features:     1 | skipped:    0 | efficiency: 0,14
scenarios:    2 | passed:     2 | failed: 0
======================================================

HTML report: (paste into browser to view) | Karate version: 1.3.1
file:///home/miguelasr/Desarrollo/hiberus/petstore/target/karate-reports/karate-summary.html
===================================================================

[INFO] Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 4.313 s - in petstore.TestsRunner
[INFO] 
[INFO] Results:
[INFO] 
[INFO] Tests run: 1, Failures: 0, Errors: 0, Skipped: 0
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  6.338 s
[INFO] Finished at: 2023-01-30T08:56:34+01:00
[INFO] ------------------------------------------------------------------------
```

## Reporte

Se puede consultar el reporte en formato html en la ruta `target/karate-reports/karate-summary.html`
