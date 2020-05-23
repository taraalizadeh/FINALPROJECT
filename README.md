## PROJECT OVERVIEW
This project examines the various consumer complaints received by financial institutions in 2013-2015. The code details the companies which received the most complaints, states with the most received complaints as well as the companies that most effectively resolved these complaints.
### DATASET
This dataset highlights the individual complaints filed against each financial institution with additional details regarding the complaint: state name, zip code, tags, submitted via, date sent to company, company response, timely response, consumer disputed and complaint ID. 
### INSTRUCTIONS
1. Download dataset [Consumer Complaints](https://drive.google.com/drive/folders/153pUKCKJyO-7iagLhRt4uMu0uADZqBXi?usp=sharing "Consumer Complaints") as a CSV file
2. Develop queries for the following categories  
   1. **Companies of Complaints**: What companies had the most complaints filed against them?
   2. **Locations of Complaints**: Did consumers in particular areas seem to complain more about specific things?
   3. **Resolutions of Complaints**: Which companies or types of complaints tended to be resolved most effectively?
3. Analyze the dataset by first naming and creating the dataset (CREATE DATABASE final_project) (USE finalproject)
### RESULTS
1. **QUERY 1**
         `select company, COUNT(company) AS most_complaints from data where company != ""`
         `GROUP BY company`
         `ORDER BY COUNT(company) DESC`
         `LIMIT 10;`
2. **QUERY 2**
         `select state_name, COUNT(state_name) AS most_complaints from data where state_name != "" && state_name NOT LIKE '%LL%' && state_name NOT LIKE '%Inc%' `
         `GROUP BY state_name`
         `ORDER BY COUNT(state_name) DESC`
         `LIMIT 15;`
3. **QUERY 3** 
         `select company, COUNT(company) AS most_resolutionms from data where timely_response = "Yes" and consumer_disputer = "No"`
         `GROUP BY company`
         `ORDER BY COUNT(company) DESC`
         `LIMIT 10;`
### SUMMARY OF FINDINGS
The code for query 1 highlighted that the following ten companies contained the most number of complaints filed against them (in descending order).
  * Experian (4131)
  * Equifax (4010)
  * TransUnion Intermediate Holdings (3152)
  * Citibank (1712)
  * Bank of America (1549)
  * JPMorgan Chase & Co. (1518)
  * Wells Fargo & Company (1369)
  * Capital One (1282)
  * Synchrony Financial (1049)
  * Navient Solutions (960)
  
The code for query 2 revealed that the following fifteen states filed the most complaints against financial institutions within the 2013-2015 period (in descending order).
   * CA (3661)
   * TX (2725)
   * FL (2460)
   * NY (2011)
   * NJ (1127)
   * GA (1050)
   * PA (1040)
   * IL (970)
   * VA (947)
   * OH (832)
   * MD (788)
   * NC (744)
   * MI (679)
   * AZ (631)
   * MA (516)
   
The code for query 3 revealed that the following ten companies resolved complaints most effectively through analysis of their timely responses and presence of consumer disputions (in descending order).
  * Experian (3439)
  * Equifax (3074)
  * Citibank (1324)
  * Bank of America (1210)
  * JPMorgan Chase & Co. (1149)
  * Wells Fargo & Company (1065)
  * Capital One (1058)
  * Synchrony Financial (878)
  * Encore Capital Group (628)
  * Amex (418)

