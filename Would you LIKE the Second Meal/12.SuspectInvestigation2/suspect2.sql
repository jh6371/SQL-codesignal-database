SELECT id,name,surname FROM Suspect 
WHERE id NOT IN(SELECT id FROM Suspect WHERE lower(name) LIKE 'b%'AND lower(surname) LIKE 'gre_n'AND height >170)
ORDER BY id ASC;
