1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id=7;
6. SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density;
7. SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
8. SELECT state_name, region_id FROM states ORDER BY region_id;
9. SELECT region_name FROM regions WHERE region_name LIKE "%Central%";
10. SELECT DISTINCT region_name, state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER BY region_id;


[<img src="/Schema.png">]

1. What are databases for? For storing large amounts of data and sorting through it.
2. What is a one-to-many relationship? Where one category of data can fit into many other categories of a different data type.
3. What is a primary key? What is a foreign key? How can you determine which is which? A primary key is the main differentiator between rows, usually it is "id". A foreign key is a link to another table that matches those rows to the tables rows.
4. How can you select information out of a SQL database? What are some general guidelines for that? By using keywords. The keywords must be CAPITALIZED and there must be a semicolon at the end of all of your conditions. The other conditions just run together with spaces between.
