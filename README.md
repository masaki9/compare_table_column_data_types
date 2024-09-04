# Compare Table Column Data Types

This repository contains a few SQL scripts designed to facilitate the data type comparison and transformation of tables within a MySQL environment. These scripts are useful for ensuring data type consistency or preparing for data migrations.

## Scripts

### create_test_tables.sql

Contains SQL commands to create test tables (`source_tbl` and `target_tbl`) in the `test` schema. These tables are used to demonstrate and test the functionality of the other scripts in the repository.

### compare_table_column_data_types.sql

This script compares the data types of corresponding columns between two tables (`source_tbl` and `target_tbl`) within the `test` schema. It helps identify discrepancies in column data types to ensure consistency before data migration.

### generate_data_type_casting.sql

Generates dynamic SQL statements for transforming and aligning data types between two tables (`source_tbl` and `target_tbl`) within the `test` schema. It is useful for data migration tasks where data types between the source and destination tables differ and require conversion to match the destination.

## Usage

1. Clone the repository:

```bash
git clone https://github.com/masaki9/compare_table_column_data_types.git
```

2. Execute the SQL scripts in your MySQL environment.

3. Modify the scripts as per your specific requirements.
