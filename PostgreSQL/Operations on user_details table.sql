select * from user_details;

-- Just see Row number 31
SELECT * FROM user_details OFFSET 30 LIMIT 1;

-- Just see a single column and a specific row value
select gender from user_details offset 30 limit 1;

-- Select multiple columns and only one row
select gender, username from user_details offset 30 limit 1;

-- Select multiple columns and 2 rows
select gender, username from user_details offset 30 limit 2;

-- Select multiple columns with an offset but no limit
select gender, username from user_details offset 30;

-- Select all columns and rows after an offset
select * from user_details offset 30;


-- Select row number 92 from column username
SELECT username
FROM ( SELECT username, ROW_NUMBER() OVER() AS row_num FROM user_details ) subquery WHERE row_num = 92;


-- Alternate way of doing this
SELECT username FROM user_details OFFSET 91 LIMIT 1;


-- Now change that value
UPDATE user_details
SET username = 'bellllaaaaaa'
WHERE username = 'ross99';















