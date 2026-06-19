SELECT max(borrowed_on) - min(borrowed_on) AS avg_loan_length
FROM loans;