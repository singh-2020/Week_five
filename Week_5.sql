--1. Copy Data from Database to CSV, Parquet, and Avro
 SELECT * FROM 'project1-465117.data1.table1';


--2. Configure Schedule Trigger and Event Triggers to Automate the Pipeline
2.1
CREATE TABLE week5_assignment.schedule_log (
  run_time TIMESTAMP
);

2.2 
INSERT INTO week5_assignment.schedule_log (run_time)
VALUES (CURRENT_TIMESTAMP());

--3.Copy All Tables from One Database to Another
CREATE OR REPLACE TABLE data1.table1_copy AS
SELECT * FROM data1.table1

--4. Copy Selective Tables and Columns
CREATE OR REPLACE TABLE data1.tabl1_selected AS
SELECT year, industry_name_NZSIOC, variable_name,variable_code
FROM data1.table1;