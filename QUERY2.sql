select state_name, COUNT(state_name) AS most_complaints from data where state_name != '' && state_name NOT LIKE '%LL%' && state_name NOT LIKE '%INC%'
GROUP BY state_name
ORDER BY COUNT(state_name) DESC
LIMIT 15;
