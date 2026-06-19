SELECT members.full_name, loans.book_title
FROM loans
JOIN members ON members.member_id = loans.member_id;