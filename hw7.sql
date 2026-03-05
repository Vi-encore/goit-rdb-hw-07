use mydb;

## task 1
SELECT 
    id,
    date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    DAY(date) AS date
FROM
    orders;
    
## task 2
SELECT 
    id, date, DATE_ADD(date, INTERVAL 1 DAY) AS date_added
FROM
    orders;
 
 
 ## task 3
SELECT 
    id, date, UNIX_TIMESTAMP(str_to_date(date, '%Y-%m-%d')) as date_timestamp
FROM
    orders;
    

## task 4
SELECT 
    COUNT(*) AS orders_rows
FROM
    orders
WHERE
    str_to_date(date, '%Y-%m-%d %H:%i:%s') BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';
    

## task 5
SELECT 
    id, date, JSON_OBJECT('id', id, 'date', date) AS json_object
FROM
    orders;