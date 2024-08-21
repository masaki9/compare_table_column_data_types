create schema if not exists test;
use test;

-- Create source_tbl with various data types
drop table if exists source_tbl;
create table source_tbl (
    id int,
    name varchar(200),
    age int,
    email varchar(200),
    salary varchar(50),
    quantity varchar(200),
    is_active int,
    total_hours varchar(50),
    last_login varchar(50),
    created_at date
);

-- Create target_tbl with some different data types for testing
drop table if exists target_tbl;
create table target_tbl (
    id int,
    name varchar(200),
    age int,
    email varchar(200),
    salary decimal(10,2),
    quantity int,
    is_active varchar(50),
    total_hours int,
    last_login date,
    created_at date
);
