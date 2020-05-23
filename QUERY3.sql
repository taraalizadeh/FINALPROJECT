select company, COUNT(company) AS most_resolutions from data where timely_response = "Yes" and consumer_disputed = "No"
GROUP BY company
ORDER BY COUNT(company) DESC
LIMIT 10;
