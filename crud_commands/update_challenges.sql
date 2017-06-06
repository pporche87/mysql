SELECT * FROM cats WHERE name='Jackson';

UPDATE cats SET name='Jack'
WHERE name='Jackson';

SELECT * FROM cats WHERE name='Jack';

SELECT * FROM cats WHERE name='Ringo';

UPDATE cats SET breed='British Shorthair'
WHERE name='Ringo';

SELECT * FROM cats WHERE name='Ringo';

SELECT * FROM cats WHERE breed='Main Coon';

UPDATE cats SET age=12
WHERE breed='Main Coon';

SELECT * FROM cats WHERE breed='Main Coon';
