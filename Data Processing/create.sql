CREATE TABLE IF NOT EXISTS salesdata (
    id TEXT NOT NULL PRIMARY KEY,
    saleamount INTEGER NULL,
    propertytype text NULL,
    listyear INTEGER NULL
);

CREATE VIEW avgsales 
AS 
SELECT 
    avg(saleamount) AS averagesale,
    propertytype,
    listyear
FROM
    salesdata
GROUP BY propertytype, listyear;

CREATE VIEW numsales
AS
SELECT
    count(*) AS salecount,
    propertytype,
    listyear
FROM
    salesdata
GROUP BY propertytype, listyear;




