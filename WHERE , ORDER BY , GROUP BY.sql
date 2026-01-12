/* WHERE -->filters rows before grouping
ORDER BY -->sorts the result
GROUP BY -->sorts the result
HAAVING -->filters after GROUP BY */
--SAMPLES BELOW :
SELECT author_id,firstname,lastname,email_id,country
FROM author2
WHERE country IN ('IN','EN')

SELECT author_id,firstname,lastname,email_id,country
FROM author2
ORDER BY country <ASC OR DESC>

SELECT country , count(country) --use distinct(country) if there are duplicates 
FROM author2
GROUP BY country
HAVING COUNT (country)=1  --to call countries of particular count like eg:(>4)
