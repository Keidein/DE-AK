use `DE-AK`;

SELECT * FROM workDone JOIN category
ON category_categoryID=categoryID
WHERE category="Arts";

SELECT * FROM workDone
WHERE notableWork OR About LIKE LOWER("%Lisa%");
        
