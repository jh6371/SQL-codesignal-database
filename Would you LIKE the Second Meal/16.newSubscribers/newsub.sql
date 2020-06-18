SELECT subscriber FROM full_year WHERE instr(newspaper,'daily')
UNION
SELECT subscriber FROM half_year WHERE instr(newspaper,'daily')
ORDER BY subscriber;
