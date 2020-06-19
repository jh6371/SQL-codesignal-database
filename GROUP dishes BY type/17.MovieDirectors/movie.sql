SELECT DISTINCT director
FROM moviesInfo
WHERE year > 2000
GROUP BY director
HAVING SUM(oscars) > 2
order by director;
