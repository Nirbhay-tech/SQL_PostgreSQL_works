CREATE TABLE test_data(
new_id INT ,
new_cat TEXT
);

INSERT INTO test_data VALUES
(100,'Agni'),
(200,'Agni'),
(500,'Dharti'),
(700,'Dharti'),
(200,'Vayu'),
(300,'Vayu'),
(500,'Vayu');

SELECT * FROM test_data;

SELECT new_id,new_cat,
SUM(new_id) Over(PARTITION BY new_cat ORDER BY new_id) 
AS TOTAL
FROM test_data;


SELECT new_id,new_cat,
SUM(new_id) Over( ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) 
AS TOTAL
FROM test_data;

SELECT new_id,
PERCENT_RANK() Over( ORDER BY new_id)
AS PERCENT_Rank
FROM test_data;

SELECT new_id,
RANK() Over( ORDER BY new_id)
AS Rank
FROM test_data;

SELECT new_id,
DENSE_RANK() Over( ORDER BY new_id)
AS DENSE_Rank
FROM test_data;

SELECT new_id,
ROW_NUMBER() Over( ORDER BY new_id)
AS ROW_NUMBER
FROM test_data;

SELECT new_id,
LEAD(new_id) Over( ORDER BY new_id) AS LEAD,
LAG(new_id) Over( ORDER BY new_id) AS Lag,
FIRST_VALUE(new_id) Over( ORDER BY new_id) AS FIRST_VALUE,
LAST_VALUE(new_id) Over( ORDER BY new_id) AS LAST_VALUE
FROM test_data;


SELECT new_id,
LEAD(new_id) Over( ORDER BY new_id) AS LEAD,
LAG(new_id) Over( ORDER BY new_id) AS Lag,
FIRST_VALUE(new_id) Over( ORDER BY new_id) AS FIRST_VALUE,
LAST_VALUE(new_id) Over( ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWINg) AS LAST_VALUE
FROM test_data;

SELECT new_id,
LEAD(new_id,2) Over( ORDER BY new_id) AS LEAD,
LAG(new_id,3) Over( ORDER BY new_id) AS Lag,
FIRST_VALUE(new_id) Over( ORDER BY new_id) AS FIRST_VALUE,
LAST_VALUE(new_id) Over( ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWINg) AS LAST_VALUE
FROM test_data;



