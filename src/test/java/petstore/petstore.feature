Feature: Tests for petstore

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def now = function(){ return java.lang.System.currentTimeMillis() }
    * def getTotalsByName = 
    """
    function(arg) {
    	var DataParser = Java.type('petstore.DataParser');
    	var dp = new DataParser(arg);
    	return dp.getTotalByName();
    }
    """

  Scenario: create a new user and then recover its data
  * def newUserName = 'newuser-' + now()
  * def newUser =
    """
    {
		    "id": 0,
		    "username": #(newUserName),
		    "firstName": "New",
		    "lastName": "User",
		    "email": "new.user@example.com",
		    "password": "password",
		    "phone": "555123456",
		    "userStatus": 0
		}
    """

    Given path 'user'
    And request newUser
    When method post
    Then status 200
    
    * def id = response.message
    * print 'created user id is: ', id

    Given path 'user', newUserName
    When method get
    Then status 200

    * print response

  Scenario: find all sold pets and print the totals by name
    * def mapIdAndName = function(x){ return {id: x.id, name: x.name} }
  
    Given path 'pet', 'findByStatus'
    And param status = 'sold'
    When method get
    Then status 200

    * def soldById = karate.map(response, mapIdAndName)
    * print soldById
    * def result = call getTotalsByName soldById
    * print result
