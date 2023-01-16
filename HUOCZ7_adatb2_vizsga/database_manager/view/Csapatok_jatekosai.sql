CREATE OR REPLACE VIEW csapatok_jatekosai AS
SELECT (j.keresztnev || ' ' || j.vezetknev) as jatekos_nev, j.mezszam, j.pozicio, cs.csapat_neve
FROM jatekosok j
INNER JOIN csapatok cs ON cs.id = j.csapat_id;
