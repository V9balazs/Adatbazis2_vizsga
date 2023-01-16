CREATE OR REPLACE VIEW meccseket_jatszottak AS
SELECT
(SELECT cs.csapat_nev
FROM csapatok cs
INNER JOIN meccsek m ON cs.id = m.hazai_csapat_id;), cs.hazai_pontszam , cs.ellenfel_pontszam, 
(SELECT cs.csapat_nev
FROM csapatok cs
INNER JOIN meccsek m ON cs.id = m.ellenfel_csapat_id;)

FROM csapatok cs
INNER JOIN meccsek m ON cs.id = m.hazai_csapat_id AND cs.id = m.ellenfel_csapat_id;
