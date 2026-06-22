-- seed.sql — sample data for the practice library database
-- Run after schema.sql

INSERT INTO members (full_name, email, joined_on) VALUES
('Ava Thompson',    'ava.thompson@gmail.com',     '2024-02-11'),
('Marcus Webb',     'm.webb@outlook.com',         '2024-03-02'),
('Priya Nair',      'priya.nair@gmail.com',       '2024-03-19'),
('Daniel Osei',     'daniel.osei@yahoo.com',      '2024-04-05'),
('Sofia Reyes',     'sofia.reyes@gmail.com',      '2024-04-21'),
('Liam Carter',     'liam.carter@proton.me',      '2024-05-08'),
('Hannah Kim',      'hannah.kim@gmail.com',       '2024-05-30'),
('Noah Adebayo',    'noah.a@outlook.com',         '2024-06-14'),
('Elena Petrova',   'elena.petrova@gmail.com',    '2024-07-01'),
('Tariq Hassan',    'tariq.hassan@yahoo.com',     '2024-07-22'),
('Grace Mwangi',    'grace.mwangi@gmail.com',     '2024-08-09'),
('Oliver Brandt',   'oliver.brandt@gmail.com',    '2024-09-03');

INSERT INTO loans (member_id, book_title, borrowed_on, due_on)
SELECT m.member_id, v.book_title, v.borrowed_on, v.due_on
FROM (VALUES
  ('ava.thompson@gmail.com',  'The Midnight Library',     DATE '2025-09-01', DATE '2025-09-15'),
  ('ava.thompson@gmail.com',  'Project Hail Mary',        DATE '2025-09-20', DATE '2025-10-04'),
  ('m.webb@outlook.com',      'Educated',                 DATE '2025-09-03', DATE '2025-09-17'),
  ('priya.nair@gmail.com',    'Klara and the Sun',        DATE '2025-09-05', DATE '2025-09-19'),
  ('priya.nair@gmail.com',    'The Song of Achilles',     DATE '2025-10-01', DATE '2025-10-15'),
  ('daniel.osei@yahoo.com',   'Atomic Habits',            DATE '2025-09-10', DATE '2025-09-24'),
  ('sofia.reyes@gmail.com',   'Where the Crawdads Sing',  DATE '2025-09-12', DATE '2025-09-26'),
  ('liam.carter@proton.me',   'Dune',                     DATE '2025-09-14', DATE '2025-10-05'),
  ('hannah.kim@gmail.com',    'The Silent Patient',       DATE '2025-09-18', DATE '2025-10-02'),
  ('noah.a@outlook.com',      'Sapiens',                  DATE '2025-09-21', DATE '2025-10-12'),
  ('elena.petrova@gmail.com', 'Normal People',            DATE '2025-09-25', DATE '2025-10-09'),
  ('tariq.hassan@yahoo.com',  'The Thursday Murder Club', DATE '2025-09-28', DATE '2025-10-12'),
  ('grace.mwangi@gmail.com',  'Pachinko',                 DATE '2025-10-02', DATE '2025-10-23'),
  ('oliver.brandt@gmail.com', 'Lessons in Chemistry',     DATE '2025-10-04', DATE '2025-10-18'),
  ('m.webb@outlook.com',      'Tomorrow and Tomorrow',    DATE '2025-10-06', DATE '2025-10-20'),
  ('sofia.reyes@gmail.com',   'A Little Life',            DATE '2025-10-08', DATE '2025-10-29'),
  ('hannah.kim@gmail.com',    'The Vanishing Half',       DATE '2025-10-10', DATE '2025-10-24'),
  ('elena.petrova@gmail.com', 'Babel',                    DATE '2025-10-12', DATE '2025-11-02'),
  ('ava.thompson@gmail.com',  'Circe',                    DATE '2025-10-15', DATE '2025-10-29'),
  ('daniel.osei@yahoo.com',   'The Power of Now',         DATE '2025-10-18', DATE '2025-11-01')
) AS v(email, book_title, borrowed_on, due_on)
JOIN members m ON m.email = v.email;