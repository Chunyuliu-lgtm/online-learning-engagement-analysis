select 
     count(*)  as total_users,
     SUM(registered) as registered_users,
     sum(explored) as explored_users,
     sum(viewed)  as viewed_users,
     sum(certified) as certified_users
from courses_cleaned_for_sql 

select 
     round(sum(viewed)*100.0/sum(registered),2) as view_rate,
     round(sum(explored)*100.0/sum(registered),2) as explored_rate,
     round(sum(certified)*100.0/sum(registered),2) as certified_rate,
     round(sum(explored)*100.0/sum(viewed),2) as view_explore_rate,
     round(sum(certified)*100.0/sum(explored),2) as explore_certified_rate
from courses_cleaned_for_sql