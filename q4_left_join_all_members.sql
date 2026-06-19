select members.full_name, loans.book_title
from members
left join loans on members.member_id = loans.member_id
