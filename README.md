Java Security
============
This repository contains several Java web applications and command line applications covering different security topics. 
Have a look at the [slides](https://blog.dominikschadow.de/events) from various events covering most of the applications
in this repository.

# Web Applications in Detail
Some web applications contain exercises, some are only there to inspect. Instructions are provided in detail on the 
start page of each web application. Using [Mozilla Firefox](https://www.mozilla.org) as browser is strongly recommended,
as some applications might not work correctly in other browsers. [Java 8](http://www.oracle.com/technetwork/java) and 
[Maven 3](http://maven.apache.org/) must be installed in order for these projects to compile.

Some web applications are based on [Spring Boot](http://projects.spring.io/spring-boot) and can be started via the 
**main** method in the **Application** class or via **mvn spring-boot:run** in the project directory. Projects 
containing a Dockerfile can be launched via `docker container run -p 8080:8080 -t dschadow/[PROJECT]` after the 
image has been created using `mvn clean package docker:build` or `docker build -t dschadow/[PROJECT] .`. The other web 
applications either contain an embedded **Tomcat7 Maven plugin** which can be started via **mvn tomcat7:run-war** or an 
embedded **Jetty Maven plugin** which can be started via **mvn jetty:run-war**.

## access-control-spring-security
Access control demo project utilizing [Spring Security](http://projects.spring.io/spring-security) in a Spring Boot 
application. Shows how to safely load user data from a database without using potentially faked frontend values. After 
launching, open the web application in your browser at **http://localhost:8080**.

## csp-spring-security
Spring Boot based web application using a Content Security Policy (CSP) header. After launching, open the web application 
in your browser at **http://localhost:8080**.

## csrf-spring-security
Cross-Site Request Forgery (CSRF) demo project based on Spring Boot preventing CSRF in a web application by utilizing 
[Spring Security](http://projects.spring.io/spring-security). After launching, open the web application in your browser 
at **http://localhost:8080**. 

## csrf
Cross-Site Request Forgery (CSRF) demo project preventing CSRF in a JavaServer Pages (JSP) web application by utilizing  
the [Enterprise Security API (ESAPI)](https://www.owasp.org/index.php/Category:OWASP_Enterprise_Security_API). 
After launching, open the web application in your browser at **http://localhost:8080/csrf**.

## direct-object-references
Direct object references (and indirect object references) demo project using Spring Boot and utilizing the 
[Enterprise Security API (ESAPI)](https://www.owasp.org/index.php/Category:OWASP_Enterprise_Security_API). After 
launching, open the web application in your browser at **http://localhost:8080**.

## intercept-me
Spring Boot based web application to experiment with 
[OWASP ZAP](https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project) as intercepting proxy. Target is to receive 
**SUCCESS** from the backend. After launching, open the web application in your browser at **http://localhost:8080**.

## security-header
Security response header demo project which applies **X-Content-Type-Options**, **Cache-Control**, **X-Frame-Options**, 
**HTTP Strict Transport Security (HSTS)**, **X-XSS-Protection** and **Content Security Policy (CSP)** (Level 1 and 2) 
headers to HTTP responses. After launching, open the web application in your browser at 
**http://localhost:8080/security-header** or **https://localhost:8443/security-header**.

## security-logging
Security logging demo project based on the 
[OWASP Security Logging Project](https://www.owasp.org/index.php/OWASP_Security_Logging_Project). After launching, open 
the web application in your browser at **http://localhost:8080/security-logging**.

## session-handling-spring-security
Session handling demo project based on Spring Boot utilizing [Spring Security](http://projects.spring.io/spring-security) 
and [jasypt-spring-boot](https://github.com/ulisesbocchio/jasypt-spring-boot) to secure [Spring](http://spring.io) 
configuration (property) files. Shows how to restrict access to resources (URLs), how to apply method level security and 
how to securely store and verify passwords. Uses Spring Security for all security related functionality. Requires a 
system property (or environment variable or command line argument) named **jasypt.encryptor.password** with the value 
**session-handling-spring-security** present on startup. After launching, open the web application in your browser at 
**http://localhost:8080**.

## session-handling
Session handling demo project using plain Java. Uses plain Java to create and update the session id after logging in. 
Requires a web server with Servlet 3.1 support. After launching, open the web application in your browser at 
**http://localhost:8080/session-handling**.

## sql-injection
Spring Boot based web application to experiment with normal (vulnerable) statements, statements with escaped input, and 
prepared statements. After launching, open the web application in your browser at **http://localhost:8080**.

## sso-with-github
Contains a Spring Boot demo application with GitHub login. Requires you to set up an application in your GitHub account 
and to provide `github.client.clientId` and `github.client.clientSecret` as runtime parameters. After launching, open 
the web application in your browser at **http://localhost:8080**.

## xss
Cross-Site Scripting (XSS) demo project preventing XSS in a JavaServer Pages (JSP) web application by utilizing input 
validation, output escaping with [OWASP Java Encoder](https://www.owasp.org/index.php/OWASP_Java_Encoder_Project) and 
the Content Security Policy (CSP). After launching, open the web application in your 
browser at **http://localhost:8080/xss**.

# Command Line Applications in Detail
All projects contain **main** methods to start the demo.

## crypto-hash
Crypto demo project using Java to hash passwords with different hashing algorithms. All classes contain **main** methods 
to execute the samples. 

## crypto-java
Crypto demo project using plain Java to encrypt and decrypt data with asymmetric (RSA) and symmetric (AES) keys as well 
as to sign and verify data (DSA). All classes contain **main** methods to execute the samples. 

## crypto-keyczar
Crypto demo project using [Keyczar](http://www.keyczar.org) to encrypt and decrypt data with asymmetric (RSA) and 
symmetric (AES) keys as well as to sign and verify data (DSA). All classes contain **main** methods to execute the 
samples. 

## crypto-shiro
Crypto demo project using [Apache Shiro](http://shiro.apache.org) to encrypt and decrypt data with symmetric (AES) keys 
as well as hash data (passwords). All classes contain **main** methods to execute the samples. 

## Meta
[![Build Status](https://travis-ci.org/dschadow/JavaSecurity.svg)](https://travis-ci.org/dschadow/JavaSecurity)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)