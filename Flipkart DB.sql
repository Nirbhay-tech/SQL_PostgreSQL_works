SELECT name,price, 
CASE 
    WHEN (price>1000) THEN 'Expensive'
	WHEN price BETWEEN 500 and 1000 THEN 'Moderate'
	ELSE 'Cheap'
END as price_tag
FROM product;

SELECT * FROM product;

ALTER TABLE product
ADD COLUMN price_tag text;

UPDATE product
SET price_tag = 
CASE 
    WHEN (price>1000) THEN 'Expensive'
	WHEN price BETWEEN 500 and 1000 THEN 'Moderate'
	ELSE 'Cheap'
END;

SELECT name,
CASE 
WHEN is_available = true Then 'IN STOCK'
ELSE 'OUT_OF STOCK'
END AS availablity_status
From product;

SELECT name, stock_quantity,
CASE 
    WHEN (stock_quantity>100) THEN 'High Stock'
	WHEN price BETWEEN 30 and 100 THEN 'Medium Stock'
	ELSE 'Low Stock'
END AS stock_level
From product;










