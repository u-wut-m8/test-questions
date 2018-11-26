--Create a table with a definition similar to the one in CSV file.
CREATE TABLE purchase_ledger(
    barcode             INT,
    transaction_date    DATE,
    purchase_price      INT,
    quantity            INT,
    PRIMARY KEY         (transaction_date)
);

--Load CSV file data into table
LOAD DATA INFILE '~/Downloads/internship_question.csv'
INTO TABLE purchase_ledger
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

--1st query
SELECT purchase_price FROM purchase_ledger ORDER BY transaction_date DESC LIMIT 1;

--2nd query
SELECT AVG(purchase_price) FROM purchase_ledger;

--Unclear problem statement for this last one. :(
SELECT AVG(quantity) FROM purchase_ledger;
