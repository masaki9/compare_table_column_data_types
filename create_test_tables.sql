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

-- Insert some records into source_tbl
insert into source_tbl (id, name, age, email, salary, quantity, is_active, total_hours, last_login, created_at)
values
(1, 'Alice Smith', 30, 'alice.smith@email.com', '50000', '100', 1,  '8', '2022-07-01', '2022-07-01'),
(2, 'Bob Johnson', 25, 'bob.johnson@email.com', null, '150', 0, '6', null, '2022-07-02'),
(3, 'Carol Williams', 28, 'carol.williams@email.com', '', null, 1, null, '2022-07-03', '2022-07-03'),
(4, 'David Jones', 45, 'david.jones@email.com', '', '200', 1, '9', '2022-07-04', '2022-07-04'),
(5, 'Eva Brown', 34, 'eva.brown@email.com', null, '250', 0, null, '2022-07-05',  '2022-07-05'),
(6, 'Frank Davis', 22, 'frank.davis@email.com', '60000', null, 1, '10', null, '2022-07-06'),
(7, 'Grace Miller', 38, 'grace.miller@email.com', '70000', '300', 1, '7', '2022-07-07', '2022-07-07'),
(8, 'Henry Wilson', 29, 'henry.wilson@email.com', '52000', '120', 1, '5', null, '2022-07-08'),
(9, 'Ivy Moore', 26, 'ivy.moore@email.com', null, null, 0, null, '2022-07-09', null),
(10, 'Jack Taylor', 31, 'jack.taylor@email.com', '55000', '130', 1, '4', '2022-07-10', '2022-07-10'),
(11, 'Kelly Anderson', 36, 'kelly.anderson@email.com', '65000', '140', null, '8', null, null),
(12, 'Leo Thomas', 24, 'leo.thomas@email.com', '58000', null, 1, '9', '2022-07-12', '2022-07-12'),
(13, 'Mia Jackson', 39, 'mia.jackson@email.com', '76000', '310', 1, '6', '2022-07-13', '2022-07-13'),
(14, 'Nora Lee', 43, 'nora.lee@email.com', null, '220', 0, null, '2022-07-14', '2022-07-14'),
(15, 'Oscar Harris', 21, 'oscar.harris@email.com', '63000', null, 1, '10', null, '2022-07-15'),
(16, 'Paula Martin', 35, 'paula.martin@email.com', '69000', '160', 1, '7', '2022-07-16', '2022-07-16'),
(17, 'Quinn Walker', 33, 'quinn.walker@email.com', '50000', null, 0, '5', null, '2022-07-17'),
(18, 'Rita Young', 27, 'rita.young@email.com', '72000', '180', 1, '9', '2022-07-18', '2022-07-18'),
(19, 'Sam King', 32, 'sam.king@email.com', null, '190', 1, null, '2022-07-19', '2022-07-19'),
(20, 'Tina Scott', 47, 'tina.scott@email.com', '81000', '300', 1, '', '', '2022-07-20');
