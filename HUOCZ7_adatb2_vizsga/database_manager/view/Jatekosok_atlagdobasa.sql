CREATE OR REPLACE VIEW jatekosok_atlagdobasa AS
SELECT (j.keresztnev || ' ' || j.vezetknev) as jatekos_nev, j.mezszam, j.pozicio, (j.dobott_pontok / j.meccsek_szama) as atlag_dobas_meccsenkent, year(SYSDATE - j.karrier_kezdet) as karrier_hossza
FROM jatekosok j;
