-- queries.sql — Module 3 query exercises

-- 1. All members, newest first
SELECT * FROM members ORDER BY joined_on DESC;

-- 2. Loans due in October
SELECT * FROM loans WHERE due_on >= '2025-10-01' AND due_on <= '2025-10-31';

-- ...and so on through 8