
# Employment
## Open GI – Lead Software Engineer (Sept 2024 – Aug 2025)
*Buckholt Drive, Warndon, Worcester, WR4 9SR, United Kingdom*


I joined as one of the Lead Java developers of a spring project that processes payments for insurance products. The task was to add the functionality to create/update "pay-by-links". This allowed payment links to be sent to customers to pay via the payment provider’s website. Tasks undertaken:

- Adapted a shared library that had only previously been used for POST SOAP requests to be used for Restful services. This allowed the HTTP method and resource path to be specified.
- Created MySql scripts for adding new tables and stored procedures.
- Developed a method to test the rollback scripts by comparing SQL dumps of the database before and after.
- Added a new SOAP end-point to process messages from back-end systems.

## IG Index – Senior Software Developer (April 2022 – May 2024)

*Cannon Bridge House, 25 Dowgate Hill, London, EC4R 2YA, United Kingdom*

I took the role of one of the lead AEM developers for the main IG.com website.

### AEM 6.4 to 6.5 migration

- Took the lead on relocating the “designs” data during the migration from AEM 6.4 to 6.5. This relocation from ‘/etc’ to ‘/apps’ in the JCR involved meticulous verification and migration of many custom components and customisations. I created an Ondeploy script in Java to update many references.
- Took the lead on planning and executing the migration of many custom components and functionality. Container components such as tabs and accordions were particularly complicated, and this was solved by following the implementation of similar components in the Adobe Core Components package. The JavaScript was particularly complex, and after completing the process once, it was then presented to the front-end team so they could continue with the other components.

### Development of New Features and Performance/Support fixes

- Introduced the use of ACS Commons Ondeploy scripts to carry out extensive content updates. After writing the first script for the “designs” data migration, I refactored it so other team members could easily use it. They could simply “plug in” custom functionality without understanding the entire framework.
- Proposed and implemented the use of URL selectors in place of parameters for specific servlet calls, allowing the response to be cached. Configuration was added so that TTL headers returned from AEM would be respected to prevent old data from being served. The change was implemented to be backwards compatible, avoiding blocks from other teams. The response times reported by the consumers of the end-points showed a significant improvement.
- Identified and fixed a long-running performance issue that was affecting the whole site. The page content would typically have a very deep level of nested nodes. An investigation revealed that it resulted in redundant but very expensive queries in the back end. A method invocation in one of the JSPs was found to be the leading cause, and after removing this, the page load speed and CPU usage were significantly improved.
- Identified the cause of AEM server crashes occurring in the test environment. Evaluation of stack traces revealed a deadlock in one of the servlets, which would occur with a particular configuration page content.
- Created various Splunk queries to analyse the logs and identify issues such as long-running requests.
- Assisting front-end developers with JavaScript-related issues.

### Other

- Assisted other developers by writing detailed and concise documentation of processes that had been forgotten within the team.

## Digitalum - AEM Software Crafter (February 2020 – April 2022)

*3560 Lummen, Klaverbladstraat 7A bus 5, Belgium*

### Bridgestone (September 2021 - April 2022)
I worked in a small team to create a new e-commerce website for Bridgestone, a company that sells tyres under various brands—the first site to be released in France for their First Stop tyre service brand.
Our team integrated the AEM website with their new commerce back-end, developed simultaneously using Magento. We’re interacting with it via GraphQL calls. Achievements:

-	Developed back-end AEM Java code. For example, I added a servlet to act as an end-point to interact with the DriveRight API, which allowed vehicles to be looked up based on the licence plate.
-	Worked on various front-end tasks, including vanilla JavaScript and React with Apollo which were used for e-commerce functionality.
-	One of the back-end tasks was to implement a retriever for a custom entity created in Magento. The code OOB code was not very extendable. To resolve this, I had to implement many lambdas in Java.
-	The delegate pattern had to be used with some commerce integration code. I contributed to a thread on how to test this in the Adobe AEM forum.

### Yamaha Motor Website (October 2020 - August 2021)
I worked with a team of three to develop new features for the Yamaha website, where customers could purchase motorbike-related apparel and accessories. This involved working with the AEM back-end, the front-end HTML/JavaScript, and AWS lambdas, which were written in TypeScript/JavaScript. Achievements:

-	Replaced the Adobe CIF code with custom lambdas to interact with the back-end Commerce Tools system.
-	Displaying related items for different products using custom fields set in Commerce Tools.
-	Developing changes for the Vue Components that listed products.
-	Introduced the product discount features to the website.
-	Used the Groovy console to make updates to properties in the AEM JCR.

### Firestone (September 2020 - October 2020)
I worked with a team of four to set up a new corporate website for the client. Tasks included setting up the analytics, caching servers and developing various components within AEM. Achievements:

-	Set up the dispatcher and varnish servers, set up the sling mappings, and planned the deployment processes within the customer’s environment. Developed various AEM components for the site.
-	Taking on assigned development tasks such as the social share component that allowed the settings to be inherited throughout the child pages.
-	Setting up the dispatchers along with the Varnish configuration. This had to be done within the client’s environment, which had a strict process. As much of this was not documented, I had to liaise with the business to get the required technical information and to understand the process.

### Bose (February 2020 - June-2020)
Enhance and optimise the existing retail site following the development of another external team. Achievements:

-	Enhancing various components that set links so that authors could specify URL parameters to append. This change was applied to the rich text plugin and other components using the pathfield dialog component.
-	Enhanced the rollout configurations so that internal site URLs would be translated appropriately.
-	Migrated the logic to process Hybris product data imports to a Kafka consumer class. This involved translating from an old API to a new one that had been developed so that the old import process could still be used.

## ecx.io - Senior AEM Developer (October 2018 – January 2020)

*2 Arlington Sq, Downshire Way, Bracknell RG12 1WA, United Kingdom*

Worked as a senior developer and was given a lead role on a project with a large team. The project was to implement a website in AEM for NSK. Having rapidly picked up speed with the project, I took significant responsibility for mentoring less experienced developers and carrying out code reviews. Tasks undertaken:

-	Assisting with some of the automated builds on Jenkins.
-	Configuring dispatchers (Apache caches), which the other developers were not experienced with.
-	Developing front-end search components using JavaScript (with jQuery) to fetch data from a back-end servlet.
-	Code reviews/mentoring - identifying issues with threading and logging with other developer’s code.
-	Took a lead development role on a project to create a tool that would analyse components on an AEM instance.
-	Configuring the AEM instances to run workflows. For example, to allow authors to send new pages for translation to other languages while undergoing a strict review process.
-	Identifying and fixing bugs in the AEM code. One example is an issue with JavaScript code where validation was working incorrectly. Also, there was an issue in Chrome where a security feature prevented an Iframe from processing correctly.
-	Implemented a forms component which required considerable back-end validation and processing of the data submitted. Implemented the email functionality to send the data to configured accounts.

## Black Sun Plc - Java Developer (April 2016 – August 2018)

*Fulham Palace, Bishop’s Avenue, London SW6 6EA*

Worked on several projects. All of these included the following responsibilities:

-	Maintenance tasks include investigating issues, fixing bugs, and updating servers and deployments.
-	Working with front-end developers to find the best solutions possible.
-	Working with project managers to gather and work on business requirements.
-	Using JIRA to document requirements and communicate changes with project managers.
-	Maintaining documentation. Several foreign members were within the team, so I was often tasked with ensuring everything was written in good English.

### AEM Platform (January 2017 - August 2018)
The AEM platform hosts many sites (~20) with various clients. For this role, I undertook the following courses:

-	Develop Websites and Components in Adobe Experience Manager v6.x
-	Extend and Customise Adobe Experience Manager v6.x
-	Administer and Securely Maintain Adobe Experience Manager v6.x

Responsibilities included:

-	Implementing many new features/components. For example:
    + A Twitter feed component was created to display tweets from a particular account filtered by a search term.
    + A new carousel component that allowed multiple components to be displayed on each slide.
-	Managing and maintaining the author, publisher, and dispatcher servers, as well as the load balancers.
-	Migration to Touch UI.
-	Implementing features such as Google Analytics, news feeds and share price feeds.

### Temasek Corporate Website (May 2017 - August 2018)
This was another AEM platform hosted by the client in Singapore. Responsibilities included:

-	Developing components and features to a very high standard for client review.
-	Clear communication and support for the client and finding resolutions to live issues as quickly as possible.
-	Maintaining up-to-date and well-written documentation/instructions.
-	Updating code to conform with strict security standards. For example:
    + clickjacking
    + Log Injection
    + Cross-Site Scripting

### Temasek Review Website (11th June 2018 - 22nd June 2018)
The site was developed in Singapore. The project involved chiefly front-end tasks. However, I was able to assist with the more complex JavaScript programming as well as various other configuration tasks.
Inchcape Connect Intranet Site (April 2016 - December 2017)
Implemented using Liferay, an open-source portal product that can be set up with portlets. Some portlets were configured out of the box, some were customised, and some were bespoke. Responsibilities included:

-	Assisting the technical team architect with setting up the UAT environment’s database, application, and web servers.
-	Configuring the portal. This included creating sites/web pages, setting up the portlets, and setting up roles/permissions and users.
-	Creating bespoke portlets. For example, an “Ask Exec Team” portlet was created where users could submit a question to be answered by an executive team member. This involved creating the portlet “view” and the database entities, implementing Lucene indexers, and setting up workflows based on user roles.
-	Carrying out deployments, patching and other server tasks.

## Thomson Reuters - Java Developer (Sept 2014 – March 2016)

*(based in the Royal Courts of Justice), 11 Rolls Buildings, London, EC4A 1NL*

Joined the team to work on implementing a new court management (CMS) and electronic filing (EFile) system in the Royal Courts of Justice. These are built upon products that are still under development in the US.

- With CMS’s first release, I was given several bugs to fix so that I could understand how the system works. Having successfully resolved many issues, I was paired with another developer to implement the EFile system. This involved modifying the configuration and making code changes to a partially built generic version of the project to conform to the business requirements of the Royal Courts of Justice. This includes:
- Setting up the configuration so the application would work against an Oracle database rather than MSSQL.
- Configuring and implementing code changes for the different pages and web-flow.
- Configuring the communication between the CMS and EFile systems and implementing the necessary code changes.
- Investigating, documenting and developing features specific to the RCJ:
  + Implementing part of the payment system to allow customers to provide an account number.
  + Allowing case parties to be added to a filing for a case.
  + Allowing law firms to be associated with multiple addresses and the data to be synchronised between the Efile and CMS systems.
- Taking part as one of the tech leads for a CMS/Efile release. I was responsible for preparing database scripts, including changes to the core product. This was more complex than previous releases because Liquibase had been introduced. Some of the dependent projects had also been merged, so additional changes to the database were required.
- Fixing bugs from the ongoing development in the US. Examples:
  + Fixing a customised spring BeanWrapper, which was incorrectly binding values from specific date fields to the page form.
  + Fixing Hibernate queries and stored procedures (both Oracle and SQL Server).
- Liaising and supporting the US team to resolve issues with the code and bugs.
 
Technologies: Free marker templates, Custom tags, Spring MVC, Hibernate, JavaScript, GIT, JIRA, Stash, Jenkins, SQL Server, Oracle, Liquibase

## BNP Paribas - Java Developer (Mar 2013 – Jun 2014)

*10 Harewood Ave, London, NW16AA*

Took over as the primary developer for Headcount, an existing web application used to monitor all staff within the fixed-income department. Work was delivered to time and budget and included:

- Optimising Ajax queries to prevent out-of-memory errors from occurring.
- Implementing the JQgrid plugin to replace existing tables on the page.
- Implementing quartz scheduler to update graduate records.
- Setting up feeds between other databases.
- Adding new pages, changes to server-side code, changes/additions to database.
- A release to include budget data into the application. This involved setting up a file-upload capability, excel file parsing with POI and a new webpage with JQgrid to display the data.
- A refresh of the data. An extract of the existing data into a spreadsheet was passed to the business. We agreed on the format of the data files to be returned and developed a process to create an SQL update script to upload the data and worked with the business to fix issues with the files, such as not being able to determine the data references or missing compulsory fields.
- Bug fixes.
- Liaising with the business to get requirements.

Technologies: Oracle, WAS 6.1, Java 1.5, POI, Quartz, JUnit, Spring MVC

## Waitrose - Java Developer (Dec 2011 – Sept 2012)

*Bracknell, UK*

Tasked with performing change requests and fixing defects on the main website and back-end integration layer. These systems were built using various technologies, including WebSphere Commerce 6, Struts and Ibatis. Fixing defects by investigating the front-end JSPs, controller commands and database tables.

## Johnson Matthey Plc - Laboratory Technical Officer (February 2010 – December 2010)

*Sonning Common, Reading, UK*

## Natural Resource Management Ltd - Laboratory Analyst (March 2004 – Sept 2004 & Dec 2005 – Feb 2010)

*Bracknell, UK*
