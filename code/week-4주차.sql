CREATE DATABASE dju24;

-- 문자의 릴레이션
CREATE TABLE char_data_types (
char_column char(10),
varchar_column varchar(10),
text_column text
);

INSERT INTO char_data_types
VALUES
('abc','abc','abc'),
('defghi','defghi','defghi');

SELECT = FROM char_data types;

-- 숫자 릴레이션 만들기
CREATE TABLE num_data_types (
numeric_column numeric(20,5),
real_column real,
double_column double precision
);

INSERT INTO number_data_types
VALUES
(.7,.7,.7),
(2.13579, 2.13579, 2.13579),
(2.1357987654,2.1357987654,2.1357987654,);

SELECT * FROM number_data_types;

날짜/시간 릴레이션 만들기
CREATE TABLE date_time_types (
timestamp_column timestamp with time zone,
interval_column interval
);

INSERT INTO date_time_types
VALUES
('2024-09-24 12:10 KST','2 days'),
('2024-09-24 12:10 +9','1 month'),
('2024-09-24 00:00 Australia/Melbourne','1 century'),
(now(),'1 week');
SELECT * FROM date_time_types;

SELECT
timestamp_column,
interval_column,
timestamp_column - interval_column AS new_date
FROM date_time_types;

--cat 함수()
SELECT timestamp_column, CAST(timestamp_column AS varchar(10))
FROM date_time_types;

SELECT numeric_column,
CAST(numeric_column AS integer),
CAST(numeric_column AS text)
FROM number_data_types;

-- SELECT CAST(char_column AS integer) FROM char_data_types;