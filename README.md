Week Five: Data Copying and Transformation

This repository contains SQL scripts and visual examples demonstrating various methods to copy and transform data between databases and file formats.

📁 Repository Contents

* **`Week_5.sql`**
  SQL script showcasing techniques to:

  * Duplicate all tables from one BigQuery dataset to another.
  * Copy data into external formats like CSV, Parquet, and Avro.
  * Selectively copy specific tables and columns.

* **Visual screenshots**
  Illustrations of each method’s results:

  * `Copy All Tables from One Database to Another.png`
    Demonstrates copying all tables between datasets.
  * `Copy Data from Database to CSV, Parquet, and Avro.png`
    Shows exporting table data into different file formats.
  * `Copy Selective Tables and Columns.png`
    Visualizes selective data copying patterns.
  * `tabl1_selected.png`
    Snapshot of partially copied table with chosen columns.
  * `table1_copy.png`
    Shows a full replica of a table after copying.

* **`bquxjob_7909d921_197e4c59ff8.csv`**
  A sample CSV output resulting from one of the export queries in `Week_5.sql`.

## 💡 Getting Started

To explore and run these examples:

1. **Load the SQL script**
   Open `Week_5.sql` in your SQL editor (BigQuery UI, CLI, etc.).

2. **Execute full-table copy**
   Adjust the source and destination dataset names, then run the relevant `CREATE TABLE ... AS SELECT * FROM ...` statement.

3. **Export to external formats**
   Run the `EXPORT DATA OPTIONS(...)` queries targeting CSV, Parquet, or Avro formats.

4. **Selective copying**
   Modify the queries under the selective section to choose specific tables and columns, then rerun.

5. **Verify via images**
   Check the `.png` screenshots to confirm that results match expected outcomes in your environment.

6. **Examine the CSV output**
   Open `bquxjob_7909d921_197e4c59ff8.csv` to see example output and structure.

---

SQL Overview

```sql
-- 1. Copy all tables
CREATE TABLE destination_dataset.table_name
AS SELECT * FROM source_dataset.table_name;

-- 2. Export to external data formats
EXPORT DATA OPTIONS(
  uri='gs://your-bucket/path/filename-*.csv',
  format='CSV',
  overwrite=true
) AS SELECT * FROM source_dataset.table_name;

-- 3. Selective copy
CREATE TABLE destination_dataset.selected_columns_table AS
SELECT column1, column2
FROM source_dataset.table_name;
```

(See full details and syntax variants in `Week_5.sql`)

---

✅ Usage Checklist

* [ ] Update dataset names and GCS bucket paths in `Week_5.sql`.
* [ ] Run copy and export queries.
* [ ] Validate results via BigQuery UI or your preferred SQL client.
* [ ] Compare outputs with the provided screenshots.
* [ ] Review `bquxjob_7909d921_197e4c59ff8.csv` for format accuracy.

---

📚 Resources

* [BigQuery SQL Reference](https://cloud.google.com/bigquery/docs/reference/standard-sql/)
* [BigQuery Export Options](https://cloud.google.com/bigquery/docs/exporting-data)

---
