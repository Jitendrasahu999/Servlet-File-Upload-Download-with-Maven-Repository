# Servlet-File-Upload-Download-with-Maven-Repository
How we can preform Servlet / JSP File Upload/Download with Maven Repository

## Maven dependancy in this project

<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>ServletFileUploadDownload</groupId>
   <artifactId>ServletFileUploadDownload</artifactId>
   <packaging>war</packaging>
   <version>0.0.1-SNAPSHOT</version>
   <name>ServletFileUploadDownload Maven Webapp</name>
   <url>http://maven.apache.org</url>
   <dependencies>
      <!-- Servlet API Dependency -->
      <dependency>
         <groupId>javax.servlet</groupId>
         <artifactId>javax.servlet-api</artifactId>
         <version>3.1.0</version>
      </dependency>
      <dependency>
         <groupId>javax.servlet.jsp</groupId>
         <artifactId>jsp-api</artifactId>
         <version>2.1</version>
      </dependency>
   </dependencies>
   <build>
      <finalName>${project.artifactId}</finalName>
   </build>
</project>
