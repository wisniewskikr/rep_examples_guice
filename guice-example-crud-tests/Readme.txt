DESCRIPTION
===========

This is example project basing on framework Guice. 
It shows example implementation of CRUD database actions: create, read, update
and delete entities from database. This project consists of following pages:
- table page		: all entities of user from database all displayed here;
- create page		: implementation of Create action. New user is created in database
- view page			: implementation of Read action. Specified user is get from database
- update page		: implementation of Updata action. User is updated in database
- delete page		: implementation of Delete action. User is deleted from database

This project shows how to use framework Spring 3 MVC together with:
- java script;
- css;
- validation;
- database;
- unit tests (basing on JUnit and Mockito);
- integration tests (basing on Selenium and Mockito).

Recommended deployment of project:
----------------------------------
Maven command:
mvn clean install -Ploc,deploy 

Recommended usage of project:
-----------------------------
Browser url:
http://localhost:8080/guice-example-crud-tests

Recommended usage of integration tests:
---------------------------------------
Maven command:
mvn clean install -Ploc,intg





GUICE INSTALLATION STEPS
========================

To create Guice application developer has to:
- add Guice dependency in Maven;
- create class module for Servlets which extends class ServletModule. Here mapping for Servlets has to be definied;
- create class of listener for Guice config. Here module for Servlet has to be added;
- add annotation @Singleton over every Servlet;
- inject java classes using anntotation @Inject.

To add JPA to Guice developer has to:
- add dependency "guice-persist" in Maven;
- add JPA configuration file "META-INF/persistence.xml" in "src/main/resources";
- add following code in class GuiceServletModule:
		// JPA configuration
		install(new JpaPersistModule("jpaUnit"));
		filter("/*").through(PersistFilter.class);





PRECONDITIONS
=============

1. TOOLS
--------
This example project requires:
- Java (tested for version 1.7.0_10);
- Maven (tested for version 3.0.4);
- Tomcat (tested for version 7.0.34);
- MySql (tested for version 5.2.38).

2. CONFIGURATION
----------------
All flexible configuration of project (server`s urls, logins, passwords etc.) can be changed in file:
<project_home>/project.properties





CONFIGURATION
=============

All flexible configuration of project (server`s urls, logins, passwords etc.) can be changed in file:
<project_home>/project.properties





DATABASE
========

Before project deployment user has to create empty database in MySql. For instance: guice-example-crud.
Then this database has to be indicated in file <project_home>/project.properties.






DEPLOYMENT
==========

You can deploy this application in two ways:
1. Copy war file
2. Use Maven plugin for deployment


Ad 1\ Copy war file
===================
You can do it using following steps:
- Open console;
- Go to project folder;
- Use Maven command for building project. Command: 
  
  mvn clean install
  
- Copy *.war file from <project_home>/target to <tomcat_home>/webapp


Ad 2\ Use Maven plugin for deployment
=====================================  
You can do it using following steps:
- Go to <tomcat_home>/conf/tomcat-users.xml and add user in manager role. For instance:

  <user username='admin' password='admin' roles='manager-gui,admin-gui,manager-script'/>
  
- Set server informations in file: <project_home>/project.properties. You have to set:
  loc.server.url, loc.server.username, loc.server.password;  
- Open console;
- Go to project folder;
- Use Maven command for building and deployment project. Command:
 
  mvn clean install -Ploc,deploy  
  
  
  
  
  
INTEGRATION TESTS
=================

This project has set of integration tests based on Selenium tool. To run integration tests you have to:

- Configure embedded Tomcat port (optional)
In file <project_home>/project.properties you can change embedded Tomcat port.
Update property "loc.test.intg.port". By default it is "8181".

- Run integration tests
To run integration tests you have to use maven command:
			mvn clean install -Ploc,intg  





USAGE
=====

Type in browser:

http://localhost:8080/guice-example-crud-tests