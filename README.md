 # Spring JSP JPA 

This project serves as a demonstration of multiple technologies including Spring MVC, JPA, JSP, and Apache Tiles. It provides a sample employee details submission form and retrieval, highlighting the seamless integration of these technologies as mentioned in the technology stack.

## Prerequisites

Before you begin, ensure you have the following prerequisites installed on your system:

- **JDK (Java Development Kit)**: JDK 1.8 or higher is required. 

- **Maven**: Apache Maven is used for building the project. Make sure you have it installed (Maven version used in this project: 3.6.0). 

- **Apache Tomcat**: The application is designed to run on Apache Tomcat. Download and install version 9.0.80 or a compatible version.

 ### Technology Stack
Component                   | Technology                            
---                         | ---                               
SDK (Java Development Kit)  | Java                                  
Framework                   | Spring                    
Persistence                 | JPA               
View Technology             | JSP and Apache Tiles  
Build Tool                  | Maven                           
Application Server          | Apache Tomcat                    
Database                    | H2 Database (In-Memory)
ORM Framework               | Hibernate                                
Annotation Processor        | Lombok                                  

## Running the Application
 
Follow these steps to run the application:

1. Clone the repository to your local machine:
   ```
   git clone https://github.com/javadkt/spring-jsp-jpa.git
    ```
   
2. Navigate to the project's root directory:
   ```
   cd spring-jsp-jpa
   ```
   
3. Build the project using Maven:
   ```
   mvn clean install
   ```
   
4. Deploy the application to Apache Tomcat:

   Copy the generated WAR file (usually named spring-jsp-jpa.war) from the target directory to the Tomcat webapps directory.
   Start Tomcat to deploy the application.
   
5. Access the application in your web browser:

   Open your web browser and go to http://localhost:8080/spring-jsp-jpa (replace spring-jsp-jpa with the context path if different).  
