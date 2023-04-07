------------------------   8kyu     ----------------------
------------------------ 07.04.2023 ----------------------

-- You will be given a table numbers, with one column number.
-- Return a dataset with two columns: number and is_even, where number contains the original input value, and is_even containing "Even" or "Odd" depending on number column values.
-- Numbers table schema
-- * number INT
-- Output table schema
-- * number  INT
-- * is_even STRING

SELECT number, 
    CASE
        WHEN number % 2 = 0 THEN 'Even'
        ELSE 'Odd' 
    END AS is_even
FROM numbers;

SELECT 
    CASE number % 2
        WHEN 0 THEN 'Even'
        ELSE 'Odd'
    END AS is_even
FROM numbers;

-- Complete the solution so that it reverses the string passed into it.
-- 'world'  =>  'dlrow'
-- 'word'   =>  'drow'
-- # write your SQL statement here: you are given a table 'solution' with column 'str', return a table with column 'str' and your result in a column named 'res'.

SELECT str,
    REVERSE(str) AS res 
FROM solution;

-- Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.
-- # write your SQL statement here: you are given a table 'booltoword' with column 'bool', return a table with column 'bool' and your result in a column named 'res'.

SELECT bool,
    CASE bool
        WHEN true THEN 'Yes'
        ELSE 'No'
    END AS res
FROM booltoword;

SELECT bool, 
    CASE 
        WHEN bool THEN 'Yes'
        ELSE 'No' 
    END AS res 
FROM booltoword

-- It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. You're given one parameter, the original string. You don't have to worry with strings with less than two characters.
-- # write your SQL statement here: you are given a table 'removechar' with column 's', return a table with column 's' and your result in a column named 'res'.

SELECT s,
    SUBSTRING(s, 2, LENGTH(s) - 2) AS res
FROM removechar;

-- Write a function that accepts an integer n and a string s as parameters, and returns a string of s repeated exactly n times.
-- Examples (input -> output)
-- 6, "I"     -> "IIIIII"
-- 5, "Hello" -> "HelloHelloHelloHelloHello"
-- --# write your SQL statement here: you are given a table 'repeatstr' with columns 'n' and 's', return a table with all columns and your result in a column named 'res'.

SELECT s,
  n,
  REPEAT(s, n) AS res
FROM repeatstr;

