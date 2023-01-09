SELECT (ge.vezeteknev || ' ' || ge.keresztnev) as nev, ge.pozicio, ((ge.fizetes * 12) || ' Ft') as evesfizetes
FROM GE_alkalmazott ge 
ORDER BY evesfizetes DESC;

SELECT ge.ceg_id, ge.pozicio, it.feladatkor, it.kivett_szabadsagok
FROM GE_alkalmazott ge INNER JOIN IT_alkalmazott it ON ge.ceg_id = it.ceg_it
WHERE it.kivett_szabadsagok >= 5;

BEGIN
  IF TRUNC(GE_alkalmazott.szerzodes_lejar) = TRUNC(SYSDATE)
    THEN dbms_output.put_line ('Van lejár szerzõdés');
    ELSE dbms_output.put_line ('Nincs leárt szerzõdés');
  END IF;
END;
