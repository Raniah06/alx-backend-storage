--Rank countries by number of fans
SELECT origin, sum(nb_fans) as fans
FROM metal_bands
GROUP BY origin
ORDER BY fans;
