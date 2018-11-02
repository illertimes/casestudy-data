# casestudy-data
Functional Requirements- Trasnaction Details Module
1)To display the transactions made by customers living in a given zipcode for a given month and year. Order by day in descending order.
2) To display the number and total values of transactions for a given type.
3) To display the number and total values of transactions for branches in a given state
Functional Requirements- Customer Details Module
1) To check the existing account details of a customer.
2) To modify the existing account details of a customer
3) To generate monthly bill for a credit card number for a given month and year.
4) To display the transactions made by a customer between two dates. Order by year, month, and day in descending order.
Functional Requirements Data Extraction and Trasnportation with Sqoop
Utilize Sqoop to extract the following data according to the specifications found in the mapping document:
1. Branch data into CDW_SAPP_BRANCH.txt
2. Credit Card Data into CDW_SAPP_CREDITCARD.txt
3. Time data into CDW_SAPP_TIME.txt
4. Customer Data into CDW_SAPP_CUSTOMER.txt
Notes:
 Data Engineers will be required to transform the data based on requirements found in the Mapping Document prior to loading the data into Hadoop.
 TIMEID is a field that the Data Engineers should create based on the DAY, MONTH, and TIME fields located in the CUSTOMER table. Format should be YYYYMMDD. For instance, January 4th, 2017 would become 20170104
 Data Engineers should extract the above data to the /Credit_Card_System/ folder in the Hadoop Filesystem
Functional Requirements-Data Loading with Hive
Utilize Hive to create tables in the Hadoop Filesystem and then load the data extracted via Sqoop into those tables.
Data Engineers will be map to transform the data based on requirements found in the Mapping Document.
Functional Requirements- Automating the Process with Oozie
1) Create an Oozie Workflow that will automate the processes of steps 2.2.1 and 2.2.2.
 Each of the files in step 2.2.1 should be deleted before the workflow is executed in order to prevent storage of redundant data
 The tables created in step 2.2.2 should be dropped before executing the hive workflow in order to prevent redundancy.
2) Incorporate that workflow into an Oozie Coordinator that will execute with the following conditions:
 Every weekday between 08:00 and 18:00 EST
 Executes once every 20 minutes
 Starts on April 2nd 2018 at 08:00 EST
Ends on March 29th 2025 at 18:00 EST
1) Create an Oozie Workflow that will automate the processes of steps 2.2.1 and 2.2.2.
 Each of the files in step 2.2.1 should be deleted before the workflow is executed in order to prevent storage of redundant data
 The tables created in step 2.2.2 should be dropped before executing the hive workflow in order to prevent redundancy.
2) Incorporate that workflow into an Oozie Coordinator that will execute with the following conditions:
 Every weekday between 08:00 and 18:00 EST
 Executes once every 20 minutes
 Starts on April 2nd 2018 at 08:00 EST
Ends on March 29th 2025 at 18:00 EST
1) Create an Oozie Workflow that will automate the processes of steps 2.2.1 and 2.2.2.
 Each of the files in step 2.2.1 should be deleted before the workflow is executed in order to prevent storage of redundant data
 The tables created in step 2.2.2 should be dropped before executing the hive workflow in order to prevent redundancy.
2) Incorporate that workflow into an Oozie Coordinator that will execute with the following conditions:
 Every weekday between 08:00 and 18:00 EST
 Executes once every 20 minutes
 Starts on April 2nd 2018 at 08:00 EST
Ends on March 29th 2025 at 18:00 EST
Functional Requirements- Optimizing Process
1) Create a new Oozie workflow similar to the process of 2.2.3. This time, however, Sqoop should only import new data. Hive should then import only that new data. Original data should not be deleted in this process.
2) Modify the Oozie Coordinator to use this workflow rather than the original, unoptimized, workflow.
