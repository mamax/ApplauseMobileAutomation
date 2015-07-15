# template.auto
This is a template project to be used to create a new automation project. 

The following step will need to be done for each new customer. 

1. Create a new GitHub Team with the format [customer_name].auto 
  1. This group will be used to provide customer access to the repo 
  2. You do not need to create a new Team for an existing client
2. Create a new private repository [customer_name].auto 
3. Check out the head of the master branch for template.auto 
  1. Navigate to that work space locally and run the following commands 
  ```bash
  Oswald:work brock$ mkdir customer.auto
  Oswald:work brock$ cd customer.auto/
  Oswald:customer.auto brock$ mkdir workspace
  Oswald:customer.auto brock$ cd workspace/
  Oswald:workspace brock$ git clone https://github.com/ApplauseAuto/template.auto.git
  Cloning into 'template.auto'...
  remote: Counting objects: 30, done.
  remote: Compressing objects: 100% (15/15), done.
  remote: Total 30 (delta 0), reused 30 (delta 0), pack-reused 0
  Unpacking objects: 100% (30/30), done.
  Checking connectivity... done.
  ```
4. Edit the pom.xml to update the TBD's to the customer name.  Also, update to the latest version of Applause Core. 
  ```xml
  <project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
	  <modelVersion>4.0.0</modelVersion>
    
	  <groupId>com.applause</groupId>
	  <artifactId>TBD.auto</artifactId>
	  <version>0.0.1-SNAPSHOT</version>
	  <packaging>jar</packaging>
    
	  <name>TBD.auto</name>
	  <url>http://maven.apache.org</url>
    
	  <properties>
		  <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
	  </properties>
	  <build>
		  <plugins>
			  <plugin>
				  <groupId>org.apache.maven.plugins</groupId>
				  <artifactId>maven-surefire-plugin</artifactId>
				  <version>2.17</version>
				  <configuration>
					  <suiteXmlFiles>
						  <suiteXmlFile>${suiteFile}</suiteXmlFile>
					  </suiteXmlFiles>
				  </configuration>
			  </plugin>
		  </plugins>
	  </build>
	  <repositories>
		  <repository>
			  <id>core-java-framework-dist-mvn-repo</id>
			  <url>https://raw.github.com/applauseauto/core-java-framework-dist/mvn-repo/</url>
			  <snapshots>
				  <enabled>true</enabled>
				  <updatePolicy>always</updatePolicy>
			  </snapshots>
		</repository>
	  </repositories>
	  <dependencies>
		  <dependency>
			  <groupId>com.applause</groupId>
			  <artifactId>auto.framework</artifactId>
			  <version>1.0.16</version>
		  </dependency>
		  <dependency>
			  <groupId>info.cukes</groupId>
			  <artifactId>cucumber-core</artifactId>
			  <version>1.1.8</version>
		  </dependency>
		  <dependency>
			  <groupId>info.cukes</groupId>
			  <artifactId>cucumber-java</artifactId>
			  <version>1.1.8</version>
		  </dependency>
		  <dependency>
			  <groupId>info.cukes</groupId>
			  <artifactId>cucumber-testng</artifactId>
			  <version>1.1.5</version>
			  <scope>test</scope>
		  </dependency>
		  <dependency>
			  <groupId>info.cukes</groupId>
			  <artifactId>cucumber-junit</artifactId>
			  <version>1.1.8</version>
		  </dependency>
		  <dependency>
			  <groupId>junit</groupId>
			  <artifactId>junit</artifactId>
			  <version>4.11</version>
			  <scope>test</scope>
		  </dependency>
	  </dependencies>
  </project>
  ```
5. rename template.auto to [customer].auto 
  
  ```bash
  Oswald:template.auto brock$ cd ..
  Oswald:workspace brock$ mv template.auto/ customer.auto
  Oswald:workspace brock$ ls
  customer.auto
  ```

6. Git Init the directory, reset the origin, commit, and checkin
  1. You may need to force push (`git push -f origin master`), instead of what is featured below
  
  ```bash
  Oswald:customer.auto brock$ cd ..
  Oswald:workspace brock$ ls
  customer.auto
  Oswald:workspace brock$ cd customer.auto/
  Oswald:customer.auto brock$ rm -rf .git
  Oswald:customer.auto brock$ git init
  Initialized empty Git repository in /Users/brock/Google Drive/work/customer.auto/workspace/customer.auto/.git/
  Oswald:customer.auto brock$ git remote add origin https://github.com/ApplauseAuto/customer.auto.git
  Oswald:customer.auto brock$ git add -A
  Oswald:customer.auto brock$ git commit -m "Initial commit for new customer based on template.auto"
  [master (root-commit) 3f8ff2a] Initial commit for new customer based on template.auto
  10 files changed, 177 insertions(+)
  create mode 100644 .gitignore
  create mode 100644 pom.xml
  create mode 100644 run-bvt.xml
  create mode 100644 src/main/java/com/applause/auto/pageframework/chunks/placeholder.txt
  create mode 100644 src/main/java/com/applause/auto/pageframework/locators/Locators.java
  create mode 100644 src/main/java/com/applause/auto/pageframework/pages/placeholder.txt
  create mode 100644 src/main/java/com/applause/auto/pageframework/testdata/TestConstants.java
  create mode 100644 src/main/resources/log4j.properties
  create mode 100644 src/test/java/com/applause/auto/test/TestSample.java
  create mode 100644 src/test/resources/BAT/LoraRegistrationValidation.feature
  Oswald:customer.auto brock$ git push origin master
  Counting objects: 30, done.
  Delta compression using up to 8 threads.
  Compressing objects: 100% (15/15), done.
  Writing objects: 100% (30/30), 3.30 KiB | 0 bytes/s, done.
  Total 30 (delta 0), reused 0 (delta 0)
  To https://github.com/ApplauseAuto/customer.auto.git
  * [new branch]      master -> master
  ```
  
7. Add the following teams as collaborators in the repository settings 
  1. [customer_name].auto
  2. ATLs
  3. ADEs
  4. ASEs 
8. Start coding! 
 
