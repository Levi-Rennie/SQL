Select member_id, Count(*) as total_loans
From loans
Group by member_id