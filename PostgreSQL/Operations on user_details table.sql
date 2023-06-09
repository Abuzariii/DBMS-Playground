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
SET username = 'rogers1003'
WHERE username = 'rogers163';

-- SQL doesn't have any inherent order, you must use an indexing column or the edited column goes at bottom of the table
-- hence we are going to order by user id in ascending order
SELECT * FROM user_details ORDER BY user_id asc;


-- Select all female users
select * from user_details where gender='Female' order by user_id asc;


-- Select all users with username length equal to or more than 10
select * from user_details where length(username)>=10 order by user_id asc;


-- Select all usernames which contain john in them
select * from user_details where username like '%john%' order by user_id asc;

-- Join multiple conditions using and
select * from user_details where username like '%john%' and length(username)>5 and username like '%24%' order by user_id asc;














